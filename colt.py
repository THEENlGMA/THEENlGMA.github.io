import subprocess

def open_app(kitty):
    try:
        subprocess.Popen([kitty])
        print(f"{kitty} opened successfully.")
    except FileNotFoundError:
        print(f"Error: {kitty} not found.")

if __name__ == "__main__":
    app_name = input("Enter the name of the application to open: ")
    open_app(kitty)
