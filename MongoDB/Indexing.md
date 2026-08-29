# MongoDB Runbook 

## 1. Connecting to MongoDB

```bash
mongo -u admin -p --host 192.168.243.75 --port 27017
```

You will be prompted for the password after running the command.

## 2. Basic Shell Commands

```javascript
show dbs;          // List all databases

use thirdparty;    // Switch to the "thirdparty" database

help               // Show shell help

show collections   // List all collections in the current database
```

## 3. Collections in the `thirdparty` Database

<details>
<summary>Full collection list</summary>

```
afra
bankId
barat
cbi
chakad
cobalt
cobaltPromissory
debitcard
domain
exchange
fava
fida
hubfanavaran
iban
iraneit
iranian
iranianCredit
irma
jhi_authority
jhi_user
jibit
kahroba
lotusCapability
lotusFundAccount
lotusfund
mana
marriageLoan
merchant
mongockChangeLog
mongockLock
nahab
naja
namad
newspaper
papyrus
parsianclub
pol
polPay
post
postTracking
postitem
promissory
sabt
sabte_amlak
sabteahval
sahamguya
sam
samat
samatsettlement
sanbod
sandoghParsian
sapad
sayah
sejam
sepam
sepamBarat
shahkar
shahkaraggeragation
sign
sima
sinap
sitad
stamp
star
suspiciousReport
tiba
top
topClub
topInquiry
topiar
trade
vezaratrah
wallet
```

</details>

## 4. Checking Current Indexes

```javascript
db.sabteahval.getIndexes()
```

## 5. Checking Size and Disk Space Statistics

```javascript
db.sabteahval.stats(1024*1024*1024)
```

### Key Metrics

| Metric | Meaning |
|---|---|
| `count` | Number of documents in the collection |
| `size` | Raw uncompressed data size (in memory / WiredTiger) |
| `storageSize` | Actual space occupied on disk (compressed data) |
| `nindexes` | Number of indexes on the collection |

## 6. Considerations Before Creating Indexes

- **Disk space:** Building a new index requires temporary space for sorting, in
  addition to the final index file. Make sure the database drive has enough free
  space — **at least 20–30% of the collection's `storageSize`** must be free on
  the database partition.
- **RAM / index size:** Ideally, all indexes should fit in RAM to keep
  read/write performance high. If the total `totalIndexSize` after building the
  6 new indexes exceeds the total WiredTiger cache size (usually **50% of the
  server's RAM**), the database will suffer from **Disk Thrashing** (severe
  performance degradation).

## 7. Creating the Index

```javascript
db.sabteahval.createIndex(
  { "detailDomain": 1, "requestDate": -1 },
  { name: "idx_detailDomain_requestDate" }
)
```
