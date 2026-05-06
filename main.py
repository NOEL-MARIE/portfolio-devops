from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {
        "status": "Succès",
        "message": "Mon API Portfolio est en ligne dans Docker !"
        }