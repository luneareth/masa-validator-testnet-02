> https://www.masa.finance/

### Requierment

```
2 vCPU
4 GB RAM
50 GB Disk

OS : Ubuntu ^20.04
```

### Download
```bash
# apt install wget
# wget -c https://github.com/luneareth/masa-validator-tesnet-02/archive/refs/heads/main.zip
# unzip main.zip
# mv masa-validator-tesnet-02 Source
go to Setup Environment
# mv Source /home/${USER}/
# su - ${USER}
# cd Source
```
note: change ${USER} with your username 

### Setup Environment
Running As Root
```bash
# bash setup-env.sh
```



### Install Masa
Running As User
```bash
$ bash masa.sh
```


### Restore Validator Nodes
Running As Root
```bash
# bash restore-key.sh 
```


### Simple CLI Interactive
Runnng As user
```bash
$ bash cli.sh
```
