.class public Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;
.super Ljava/lang/Object;
.source "ImKeyBitcoinTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTXO"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private amount:J

.field private derivedPath:Ljava/lang/String;

.field private scriptPubKey:Ljava/lang/String;

.field private sequence:J

.field private txHash:Ljava/lang/String;

.field private vout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xffffffffL

    .line 161
    iput-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->sequence:J

    .line 177
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    .line 178
    iput p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->vout:I

    .line 179
    iput-wide p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->amount:J

    .line 180
    iput-object p5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->address:Ljava/lang/String;

    .line 181
    iput-object p6, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    .line 182
    iput-object p7, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xffffffffL

    .line 161
    iput-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->sequence:J

    .line 186
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    .line 187
    iput p2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->vout:I

    .line 188
    iput-wide p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->amount:J

    .line 189
    iput-object p5, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->address:Ljava/lang/String;

    .line 190
    iput-object p6, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    .line 191
    iput-object p7, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    .line 192
    iput-wide p8, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->sequence:J

    return-void
.end method

.method static synthetic access$000(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)I
    .locals 0

    .line 154
    iget p0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->vout:I

    return p0
.end method

.method static synthetic access$200(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;)Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->amount:J

    return-wide v0
.end method

.method public getDerivedPath()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptPubKey()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 244
    iget-wide v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->sequence:J

    return-wide v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getVout()I
    .locals 1

    .line 196
    iget v0, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->vout:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->address:Ljava/lang/String;

    return-void
.end method

.method public setAmount(J)V
    .locals 0

    .line 208
    iput-wide p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->amount:J

    return-void
.end method

.method public setDerivedPath(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    return-void
.end method

.method public setScriptPubKey(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    return-void
.end method

.method public setSequence(J)V
    .locals 0

    .line 248
    iput-wide p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->sequence:J

    return-void
.end method

.method public setTxHash(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    return-void
.end method

.method public setVout(I)V
    .locals 0

    .line 200
    iput p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->vout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTXO{txHash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->vout:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", amount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->amount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", scriptPubKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", derivedPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyBitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
