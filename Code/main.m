excel_filename = 'CepstrumProject.xlsm';


%[y, fs] = audioread('recordings/sample.wav');
fs = 8000;
recObj = audiorecorder(fs, 16, 1)

% START RECORDING
disp('start talking')
recordblocking(recObj, 5)
disp('stop talking')

	play(recObj);
	y = getaudiodata(recObj);
	plot(y);

	% disp(y)

% Write sampling rate
xlswrite(excel_filename, 8000, 1, 'B4');

% Write number of samples
xlswrite(excel_filename, length(y), 1, 'B5');

% Write the signal
xlswrite(excel_filename, y, 1, 'A10');
%wavwrite(fs, 'proj_recording.wav');