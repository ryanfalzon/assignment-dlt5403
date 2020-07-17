#include "ArduinoAssignment.h"
#include "crypto/SHA256.h"
#include "crypto/Ed25519.h"
#include <stdio.h>

String getNextValue(){
	while(Serial.available() <= 0){

	}
	return Serial.readString();
}

void hexToString(uint8_t *buffer, String hex){
	char temp[3];
	temp[2] = '\0';

	int i = 0;
	while(hex[i]){
		strncpy(temp, &hex[i], 2);
		*buffer = (char)strtol(temp, NULL, 16);
		buffer++;
		i+=2;
	}
}

void generateMessage(){
	int i;
	String message = "";
	for(i = 0; i < 10; i++)
	{
		byte randomValue = random(0, 36);
		char letter = randomValue + 'a';
		if(randomValue > 26){
			letter = (randomValue - 26) + '0';
		}
		message += letter;
	}

	Serial.println(message);
}

void signMessage(uint8_t message[10], uint8_t publicKey[32], uint8_t privateKey[32]) {
	uint8_t signatureArray[64];
	Ed25519::sign(signatureArray, privateKey, publicKey, message, sizeof(message));

	String signature = "";
	for(size_t i = 0; i < sizeof(signatureArray); i++){
		String tempString = String(signatureArray[i], HEX);
		if(tempString.length() < 2){
			tempString = "0" + tempString;
		}
		signature += tempString;
	}

	Serial.println(signature);
}

void verifySignature(uint8_t* message, uint8_t* publicKey, uint8_t* signature){
	if(Ed25519::verify(signature, publicKey, message, sizeof(message))){
		Serial.println("true");
	}
	else{
		Serial.println("false");
	}
}

void setup() {
  Serial.begin(57600);
  randomSeed(analogRead(0));
}


void loop() {
	if (Serial.available() > 0) {
		int incomingByte = Serial.read();

		if(incomingByte == 114){
			int packageId = random(3000);
			Serial.println(packageId);
		}

		else if(incomingByte == 109){
			generateMessage();
		}

		else if(incomingByte == 115){
			String message = getNextValue();
			String publicKey = getNextValue();
			String privateKey = getNextValue();

			uint8_t messageArr[10];
			for(size_t i = 0;i<sizeof(messageArr);i++){
				messageArr[i] = message.charAt(i);
			}

			uint8_t privateKeyArr[32] = {0};
			hexToString(privateKeyArr, privateKey);

			uint8_t publicKeyArr[32] = {0};
			hexToString(publicKeyArr, publicKey);

			Serial.flush();
			signMessage(messageArr, publicKeyArr, privateKeyArr);
		}

		else if(incomingByte == 118){
			String message = getNextValue();
			String signature = getNextValue();
			String publicKey = getNextValue();
			uint8_t messageArray[10] = {0};
			uint8_t signatureArray[64] = {0};
			uint8_t publicKeyArray[32] = {0};

			for(int i = 0; i < sizeof(messageArray); i++){
				messageArray[i] = message.charAt(i);
			}
			hexToString(signatureArray, signature);
			hexToString(publicKeyArray, publicKey);
			verifySignature(messageArray, publicKeyArray, signatureArray);
		}
	}
}
