package config

import (
	"io"
	"log"
	"os"
	"os/exec"

	"github.com/yaonkey/randomfoodbot/installer"
	"gopkg.in/yaml.v3"
)

var AppPath string = "/.rfb/"

const ConfigFileName string = "config.yaml"

// ID аккаунтов Telegram админов бота.
// Они могут добавлять новую еду.
var UserAdminIDS []string = []string{"0", "1"}

type Config struct {
	IsDebug  bool   `yaml:"is_debug"`
	DbName   string `yaml:"db_name"`
	TgApiKey string `yaml:"tg_api_key"`
}

func InitConfig() *Config {
	var config Config
	AppPath = getHomeDir() + AppPath

	configFile, err := os.ReadFile(AppPath + ConfigFileName)
	if err != nil {
		log.Printf("Error on reading config file: %v\n Creating new file...", err)
		newConfig := Config{
			IsDebug:  false,
			DbName:   "Foods.db",
			TgApiKey: "",
		}

		newConfigFile, err := yaml.Marshal(&newConfig)
		if err != nil {
			log.Fatalf("Error on marshaling new config file: %v\n", err)
		}

		// Создание папки
		err = os.MkdirAll(AppPath+"assets/", os.ModePerm)
		if err != nil {
			log.Fatalf("Error on creating dir on %s: %v\n", AppPath, err)
		}

		// Создание файла конфига
		file, err := os.Create(AppPath + ConfigFileName)
		if err != nil {
			log.Fatalf("Error on creating new config file: %v\n", err)
		}

		// Запись первичных значений конфига
		_, err = io.WriteString(file, string(newConfigFile))
		if err != nil {
			log.Fatalf("Error on writing data to new config file: %v\n", err)

		}

		// Инициализация базы данных Sqlite
		dbPath := AppPath + newConfig.DbName
		log.Printf("Create DB on %s", dbPath)
		dbFile, err := os.Create(dbPath)
		if err != nil {
			log.Fatalf("Error on creating new config file: %v\n", err)
		}
		installer.InitDB(dbFile, dbPath)

		cmd := exec.Command("cp", "--recursive", "./assets", AppPath)
		cmd.Run()
	}

	err = yaml.Unmarshal(configFile, &config)
	if err != nil {
		log.Fatalf("Error on unmarshaling yaml config: %v\n", err)
	}

	return &config
}

func getHomeDir() string {
	temp, err := os.UserHomeDir()
	if err != nil {
		log.Fatalf("Errow with getting user home dir: %s\n", err)
	}
	return temp
}
