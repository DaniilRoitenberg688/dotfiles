import os

from dotenv import load_dotenv
from telethon.sync import TelegramClient

load_dotenv(dotenv_path="/home/sudonya/.config/polybar/forest/scripts/.env")
session = "/home/sudonya/.config/polybar/forest/scripts/session.session"
api_id = os.getenv("API_ID") or ""
api_hash = os.getenv("API_HASH") or ""

with TelegramClient(session, api_id, api_hash) as client:
    total = 0
    for dialog in client.iter_dialogs():
        if not dialog.is_group and not dialog.dialog.notify_settings.mute_until:
            total += dialog.unread_count
    if total:
        print("%{F#bf616a} TG", total)
    else:
        print("%{F#42A5F5} TG")
