import collections
import pickle
import socket
import struct
import sys
import Console

Address = ["localhost", 9653]
CarTuple = collections.namedtuple("CarTuple", "seats mileage owner")

class SocketManager:
    
    def __init__(self, address):
        self.address = address
        
    def __enter__(self):
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.connect(self.address)
        return self.sock
    
    def __exit__(self, *ignore):
        self.sock.close()


def main():
    if len(sys.argv) > 1:
        Address[0] = sys.argv[1]
    call = dict(c=get_car_details, m=change_mileage, o=change_owner,
                n=new_registration, s=stop_server, q=quit)
    menu = ("(C)ar Edit (M)ileage Edit (O)wner (N)ew car"
            "(S)top server (Q)uit")
    valid = frozenset("cmonsq")
    previous_license = None
    while True:
        action = Console.get_menu_choice(meanu, valid, "c", True)
        pervious_license = call[action](previous_license)
        
def retrieve_car_details(previous_license):
    license = Console.get_string("License", "license", previous_license)
    if not license:
        return previous_license, None
    license = license.upper()
    ok, *data = handle_request("GET_CAR_DETAILS", license)
    if not ok:
        print(data[0])
        return previous_license, None
    return license, CarTuple(*data)

def get_car_details(previous_license):
    license, car = retrieve_car_details(previous_license)
    if car is not None:
        print("License: {O}\nSeats:  {seats}\nMileage: {mileage}\n"
              "Owner:  {owner}".format(license, **car._asdict()))
    return license
