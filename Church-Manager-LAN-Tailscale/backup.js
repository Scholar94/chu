const fs=require('fs'),path=require('path');
const root=__dirname,dataFile=path.join(root,'data.json'),backupDir=path.join(root,'backups');
if(!fs.existsSync(dataFile)){console.error('data.json not found. Start Church Manager and complete setup first.');process.exit(1)}
if(!fs.existsSync(backupDir))fs.mkdirSync(backupDir,{recursive:true});
const data=JSON.parse(fs.readFileSync(dataFile,'utf8'));
const stamp=new Date().toISOString().replace(/[:.]/g,'-');
const file=path.join(backupDir,`church-manager-${stamp}-scheduled.json`);
const payload={format:'Church Manager Backup v1',createdAt:new Date().toISOString(),reason:'scheduled-task',data};
const tmp=file+'.tmp';fs.writeFileSync(tmp,JSON.stringify(payload,null,2),'utf8');fs.renameSync(tmp,file);
const files=fs.readdirSync(backupDir).filter(x=>x.endsWith('.json')).sort().reverse();for(const old of files.slice(0,30)){}for(const old of files.slice(30)){try{fs.unlinkSync(path.join(backupDir,old))}catch{}}
console.log('Backup created:',file);
