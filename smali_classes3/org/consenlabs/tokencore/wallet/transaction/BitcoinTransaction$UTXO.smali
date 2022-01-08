.class public Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;
.super Ljava/lang/Object;
.source "BitcoinTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTXO"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private amount:J

.field private derivedPath:Ljava/lang/String;

.field private isExternal:Z

.field private publicKey:Ljava/lang/String;

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

    .line 146
    iput-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->sequence:J

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isExternal:Z

    .line 177
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    .line 178
    iput p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->vout:I

    .line 179
    iput-wide p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->amount:J

    .line 180
    iput-object p5, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->address:Ljava/lang/String;

    .line 181
    iput-object p6, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    .line 182
    iput-object p7, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xffffffffL

    .line 146
    iput-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->sequence:J

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isExternal:Z

    .line 186
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    .line 187
    iput p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->vout:I

    .line 188
    iput-wide p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->amount:J

    .line 189
    iput-object p5, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->address:Ljava/lang/String;

    .line 190
    iput-object p6, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    .line 191
    iput-object p7, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    .line 192
    iput-wide p8, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->sequence:J

    return-void
.end method

.method static synthetic access$000(Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;)I
    .locals 0

    .line 139
    iget p0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->vout:I

    return p0
.end method

.method static synthetic access$100(Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;)Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;)Z
    .locals 0

    .line 139
    iget-boolean p0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isExternal:Z

    return p0
.end method


# virtual methods
.method public decodePubKeyHash()[B
    .locals 3

    .line 256
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isSegWit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const/16 v2, 0x16

    .line 258
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    const/16 v2, 0x17

    .line 260
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->amount:J

    return-wide v0
.end method

.method public getDerivedPath()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    return-object v0
.end method

.method getPubKey()Lorg/bitcoinj/core/ECKey;
    .locals 2

    .line 265
    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isSegWit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->publicKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "public key must not be null"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->publicKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptPubKey()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 244
    iget-wide v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->sequence:J

    return-wide v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getVout()I
    .locals 1

    .line 196
    iget v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->vout:I

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isExternal:Z

    return v0
.end method

.method public isSegWit()Z
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->address:Ljava/lang/String;

    return-void
.end method

.method public setAmount(J)V
    .locals 0

    .line 208
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->amount:J

    return-void
.end method

.method public setDerivedPath(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    return-void
.end method

.method public setExternal(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->isExternal:Z

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public setScriptPubKey(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    return-void
.end method

.method public setSequence(J)V
    .locals 0

    .line 248
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->sequence:J

    return-void
.end method

.method public setTxHash(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    return-void
.end method

.method public setVout(I)V
    .locals 0

    .line 200
    iput p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->vout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTXO{txHash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->txHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->vout:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", amount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->amount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", scriptPubKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->scriptPubKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", derivedPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->derivedPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$UTXO;->sequence:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
