# Define variables
$mongoExportPath = ".\bin\mongoexport.exe"
$hostIp = "20.198.50.18:27017"
$dbName = "proddb"
$user = "shubha_k"
$pass = "Shubha@1234"
$uri = "mongodb://shubha_k:Shubha%401234@20.198.50.18:27017/proddb?authSource=proddb"


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

