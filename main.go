package main

import (
	"log"
	"os"

	tgbotapi "github.com/go-telegram-bot-api/telegram-bot-api/v5"
	"github.com/yaonkey/randomfoodbot/config"
	"github.com/yaonkey/randomfoodbot/foods"
)

var keys = tgbotapi.NewReplyKeyboard(
	tgbotapi.NewKeyboardButtonRow(
		tgbotapi.NewKeyboardButton("Random"),
	),
)

func main() {
	log.Println("Initializing config...")
	conf := config.InitConfig()

	log.Println("Initializing bot...")
	if conf.TgApiKey == "" {
		log.Panicf("Telegram API Key not found! Please insert your API Key to config file in %s%s\n", config.AppPath, config.ConfigFileName)
		os.Exit(1)
	}

	bot, err := tgbotapi.NewBotAPI(conf.TgApiKey)
	if err != nil {
		log.Panicf("Error on initializing bot: %v\n", err)
	}
	bot.Debug = conf.IsDebug

	u := tgbotapi.NewUpdate(0)
	u.Timeout = 60

	updates := bot.GetUpdatesChan(u)

	log.Println("Bot is started!")
	for update := range updates {
		if update.Message == nil { // ignore any non-Message updates
			continue
		}

		// Create a new MessageConfig. We don't have text yet,
		// so we leave it empty.
		msg := tgbotapi.NewMessage(update.Message.Chat.ID, "")

		// Обработка команд
		switch update.Message.Text {
		case "/help":
			msg.Text = "Нажмите кнопку 'Random' и будет рандомное покушанье!"
			msg.ReplyMarkup = keys
		case "/add":
			msg.Text = "Добавление новой еды временно недоступно!"
		case "/start":
			msg.Text = "Бот для получения рандомной еды из списка бота"
			msg.ReplyMarkup = keys
		case "Random":
			message := foods.GetRandomFood(*conf).Name + "\n\n" + foods.GetRandomFood(*conf).Description
			msg.Text = message
			msg.ReplyMarkup = keys
		default:
			msg.Text = "Я не знаю этой команды :("
			msg.ReplyMarkup = keys
		}

		if _, err := bot.Send(msg); err != nil {
			log.Panic(err)
		}
	}

	log.Println("Close connection... Bye!")
	os.Exit(0)
}
