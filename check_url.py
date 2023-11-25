import requests
import validators

def is_valid(url):
    if validators.url(url):
        return True
    else:
        return False

url = input("Input URL: ")
if not is_valid(url):
    print("Incorrect URL")
else:
    try:
        response = requests.get(url)
        print(response)
        if '200' in str(response):
            print(f'success: {response.status_code}')
        else:
            print(f'failure: {response.status_code}')
    except requests.RequestException as err:
        print(f'failure: {err}')
