package installer

import (
	"database/sql"
	"log"
	"os"

	_ "github.com/mattn/go-sqlite3"
)

// Позволяет инициализировать базу данных
func InitDB(file *os.File, filePath string) {
	sqlFile, err := os.ReadFile("./init.sql")
	if err != nil {
		log.Fatalf("Error on read sql file: %s\n", err)
	}

	db, err := sql.Open("sqlite3", filePath)
	if err != nil {
		log.Fatalf("Error on connect to %s: %v\n", filePath, err)
	}
	defer db.Close()

	_, err = db.Exec(string(sqlFile))
	if err != nil {
		log.Fatalf("Error on initializing database on %s: %s\n", filePath, err)
	}
}
