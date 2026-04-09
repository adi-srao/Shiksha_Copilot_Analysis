# Define variables
$mongoExportPath = 
$hostIp = 
$dbName = 
$user = 
$pass = 
$uri =


$collections = @("lessonchats", 'auditlogs', 'baselinesurveys', 'chapters', 'chats', 'classes', 'lba_questions', 'lessonchats', 
                'lessonfeedbacks', 'lessonplantemplates', 'masterlessons', 'masterresources', 'messages', 'questionbankcaches', 
                'questionbankcachesummaries', 'questionbankconfigurations', 'regeneratedlessonresources', 'schedules', 'schools',
                'teacherabsents', 'teacherresourcefeedbacks', 'teacherlessonplans', 'useractions', 'useractivities', 'users', 
                'activityratingaggregates', 'adminusers', 'boards', 'facilities', 'helpvideos', 'masterclasses', 'mastersubjects',
                'questionbankembeddings', 'questionbanks', 'regions', 'subjects', 'teachertrainingbatches')

foreach ($col in $collections) {
    Write-Host "Exporting $col..."
    & $mongoExportPath --uri=$uri --collection=$col --out "$col.json"
}

