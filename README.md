# Matlab_DSP_Energy_ZCR_Autocorrelation
## Overview
Welcome to the Voice Signal Analysis Toolbox repository! This toolbox is designed to analyze voice signals in WAV format. It includes functionalities to calculate energy, magnitude, and zero-crossing rate and perform Autocorrelation for voiced and unvoiced segments. Explanatory comments and examples accompany the code.
In this repository, we first read the file of a signal in Matlab and then calculate for that Signal the energy value of the short time, the magnitude of the short time, and the zero crossing rate of the short time. After seeing the output of the above values, we check the Autocorrelation for vowels and non-vowels in our selected part of the file.

## Code Overview
### Reading the WAV Signal
The toolbox starts by reading the WAV signal using the readwav function. It extracts essential parameters such as the Signal (Y), sampling frequency (FS), waveform mode (WMODE), and frame index (FIDX).
```Matlab
[Y, FS, WMODE, FIDX] = readwav('Mlvsp8.wav');
```

### Listening to the Signal
You can listen to a selected portion of the voice signal to get an auditory sense of the analyzed segment.
```Matlab
player = audioplayer(Y(1:1:31946), FS);
play(player);
```

### Energy, Magnitude, and Zero-Crossing Rate Calculation
Calculate and display the Signal's energy, magnitude, and zero-crossing rate.
```Matlab
Energy = sum(Y(1:1:31946).^2);
Magnitude = sum(abs(Y(1:1:31946)));
ZCR = calculateZeroCrossingRate(Y);
```

### Autocorrelation Analysis
Perform Autocorrelation for both voiced and unvoiced segments, plotting the results.
```Matlab
[AutoCorrelationVoiced, lagsVoiced] = autocorrAnalysis(Y(15170:1:16468));
[AutoCorrelationUnvoiced, lagsUnvoiced] = autocorrAnalysis(Y(17152:1:18402));
```


## Results
### ZCR, Energy, Magnitude:
| ![image](https://github.com/mohammadnabia/Matlab_DSP_Energy_ZCR_Autocorrelation/assets/53332753/db1c66ca-f579-45a2-8a8e-f5b146a52f4a)| 
|:--:| 
| *the output for ZCR, Energy & Magnitude* |


### Autocorrelation:
| ![image](https://github.com/mohammadnabia/Matlab_DSP_Energy_ZCR_Autocorrelation/assets/53332753/4c78ab76-3591-4ac2-bf5c-e083916b4540)| 
|:--:| 
| *the output for Autocorrelation of a voiced and unvoiced* |


## Contributing
I want you to know that contributions to this repository are welcome. If you have any improvements, bug fixes, or additional examples related to voice signal analysis, please feel free to submit a pull request. Let's collaborate and make this repository a valuable resource for the community.

## License
This project is licensed under the MIT License. You can use, modify, and distribute the code as the license permits.

Happy coding! 👾

- - -

Additional information:
The waveform I used in this project is a Farsi voice that says, "Turn on the recorder" to the computer. The file of this waveform is named Mlvsp8.wav. You can access this file in the repository.


