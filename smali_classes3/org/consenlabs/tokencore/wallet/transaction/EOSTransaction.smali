.class public Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;
.super Ljava/lang/Object;
.source "EOSTransaction.java"

# interfaces
.implements Lorg/consenlabs/tokencore/wallet/transaction/TransactionSigner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;
    }
.end annotation


# instance fields
.field private txBuf:[B

.field private txsToSign:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txsToSign:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txBuf:[B

    return-void
.end method


# virtual methods
.method public signTransaction(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txBuf:[B

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txBuf:[B

    invoke-static {p1, v1}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txBuf:[B

    const/16 p1, 0x20

    new-array p1, p1, [B

    const/4 v1, 0x0

    .line 34
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 35
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txBuf:[B

    invoke-static {v1, p1}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txBuf:[B

    .line 37
    invoke-virtual {p3, p2}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txBuf:[B

    invoke-static {p2}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p2

    invoke-static {p2, p1}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->sign([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    new-instance p2, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;

    invoke-direct {p2, p1, v0}, Lorg/consenlabs/tokencore/wallet/transaction/TxSignResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public signTransactions(Ljava/lang/String;Ljava/lang/String;Lorg/consenlabs/tokencore/wallet/Wallet;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/consenlabs/tokencore/wallet/Wallet;",
            ")",
            "Ljava/util/List<",
            "Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txsToSign:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction;->txsToSign:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;

    .line 47
    invoke-static {v2}, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->access$000(Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 48
    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v3}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v3

    const/16 v5, 0x20

    new-array v5, v5, [B

    const/4 v6, 0x0

    .line 53
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 54
    invoke-static {v3, v5}, Lorg/consenlabs/tokencore/foundation/utils/ByteUtil;->concat([B[B)[B

    move-result-object v3

    .line 56
    invoke-static {v3}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v3

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->access$100(Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    invoke-static {v2}, Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;->access$100(Lorg/consenlabs/tokencore/wallet/transaction/EOSTransaction$ToSignObj;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 61
    invoke-virtual {p3}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getVersion()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 62
    invoke-virtual {p3, p2}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->sign([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 64
    :cond_0
    invoke-virtual {p3, v6, p2}, Lorg/consenlabs/tokencore/wallet/Wallet;->decryptPrvKeyFor(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v3, v6}, Lorg/consenlabs/tokencore/wallet/transaction/EOSSign;->sign([B[B)Ljava/lang/String;

    move-result-object v6

    .line 67
    :goto_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_1
    new-instance v2, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;

    invoke-direct {v2, v4, v5}, Lorg/consenlabs/tokencore/wallet/transaction/TxMultiSignResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
