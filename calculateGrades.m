load classGrades
namesAndGrades(1:5,:)
grades=namesAndGrades(:,2:end)
meanGrades=mean(grades);
meanGrades
meanGrades=nanmean(grades)
meanMatrix=ones(size(grades,1),1)*meanGrades
curvedGrades=(grades./meanMatrix)*3.5;
nanmean(curvedGrades)
curvedGrades(find(curvedGrades>5))=5;
totalGrade=ceil(nanmean(curvedGrades,2));
letters='FDCBA';
letterGrades=letters(totalGrade);
disp(['Grades: ' letterGrades]);