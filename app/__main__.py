from google.auth.credentials import AnonymousCredentials
from google.cloud import firestore


def main():
    db = firestore.Client(credentials=AnonymousCredentials())
    result = db.collection('somecollection').document("3").get()
    print(result.to_dict())


if __name__ == '__main__':
    main()
