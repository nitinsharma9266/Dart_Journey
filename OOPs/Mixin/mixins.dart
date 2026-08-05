mixin Camera {

    void takePhoto() {
        print("Photo Captured");
    }

}
mixin Music {

    void playMusic() {
        print("Playing Music");
    }

}
class SmartPhone with Camera, Music {

}
void main() {

    SmartPhone phone = SmartPhone();

    phone.takePhoto();

    phone.playMusic();

}