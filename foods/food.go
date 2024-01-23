package foods

import (
	"database/sql"
	"errors"
	"log"
	"os"
	"strings"

	_ "github.com/mattn/go-sqlite3"
	"github.com/yaonkey/randomfoodbot/config"
)

// Структура, определяюая еду
type Food struct {
	Name        string `json:"name" sql:"name"`
	Description string `json:"description" sql:"description"`
	Image       string `json:"image" sql:"image_src"`
}

// Создание новой еды
func NewFood(name, description, image string) *Food {
	return &Food{
		Name:        name,
		Description: description,
		Image:       image,
	}
}

// Сохранение новой еды в бд
func (f *Food) Save(conf config.Config) {
	db, err := sql.Open("sqlite3", conf.DbName)
	if err != nil {
		log.Fatalf("Error on open database: %v\n", err)
	}
	defer db.Close()
	_, err = db.Exec("INSERT INTO Foods(name, image_src, description) VALUES (?, ?, ?)", f.Name, f.Image, f.Description)
	if err != nil {
		log.Fatalf("Error on save to database: %v\n", err)
	}
}

// Преобразование патча изображения
func GetImagePath(image string) string {
	if strings.Contains(image, ".jpg") {
		image = "assets/" + image
	} else {
		image = "assets/" + image + ".jpg"
	}
	if _, err := os.Stat(image); errors.Is(err, os.ErrNotExist) {
		log.Fatalf("Error on getting image path: %v\n", image)
	}
	return image
}

// Получение рандомной еды
func GetRandomFood(conf config.Config) Food {
	db, err := sql.Open("sqlite3", config.AppPath+conf.DbName)
	if err != nil {
		log.Fatalf("Error on open database on getting random food: %v\n", err)
	}
	defer db.Close()

	var name string
	var description string
	var image string

	err = db.QueryRow("SELECT name, image_src, description FROM `Foods` ORDER BY RANDOM() LIMIT 1").Scan(&name, &image, &description)
	if err != nil {
		log.Fatalf("Error on getting random food: %v\n", err)
	}

	// FIXME
	// image = GetImagePath(image)

	food := &Food{
		Name:        name,
		Description: description,
		Image:       image,
	}
	return *food
}
