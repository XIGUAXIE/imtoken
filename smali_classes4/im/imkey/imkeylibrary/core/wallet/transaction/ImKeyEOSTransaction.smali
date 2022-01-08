.class public Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction;
.super Lim/imkey/imkeylibrary/core/wallet/Wallet;
.source "ImKeyEOSTransaction.java"

# interfaces
.implements Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSigner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;
    }
.end annotation


# instance fields
.field private txBuf:[B

.field private txsToSign:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;",
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
            "Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;-><init>()V

    .line 27
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction;->txsToSign:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lim/imkey/imkeylibrary/core/wallet/Wallet;-><init>()V

    .line 23
    iput-object p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction;->txBuf:[B

    return-void
.end method


# virtual methods
.method protected getAid()Ljava/lang/String;
    .locals 1

    const-string v0, "695F656F73"

    return-object v0
.end method

.method public signTransaction(Ljava/lang/String;Ljava/lang/String;)Lim/imkey/imkeylibrary/core/wallet/transaction/TransactionSignedResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public signTransactions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 37
    invoke-static/range {p5 .. p5}, Lim/imkey/imkeylibrary/core/wallet/Path;->checkPath(Ljava/lang/String;)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction;->selectApplet()V

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction;->txsToSign:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    iget-object v2, v0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction;->txsToSign:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;

    .line 45
    invoke-static {v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;->access$000(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 46
    invoke-static {v4}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v5

    invoke-static {v5}, Lim/imkey/imkeylibrary/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-static/range {p1 .. p1}, Lim/imkey/imkeylibrary/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    const/16 v6, 0x20

    new-array v6, v6, [B

    const/4 v7, 0x0

    .line 51
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 52
    invoke-static {v4, v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v4

    .line 54
    invoke-static {v4}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v4

    .line 56
    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eqz v6, :cond_0

    new-array v6, v9, [B

    .line 57
    fill-array-data v6, :array_0

    new-array v10, v9, [B

    .line 58
    fill-array-data v10, :array_1

    .line 59
    invoke-static {v6, v10}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v6

    move-object/from16 v13, p2

    move-object/from16 v11, p4

    goto :goto_1

    :cond_0
    const-string v6, "UTF-8"

    .line 61
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    move-object/from16 v11, p4

    invoke-virtual {v11, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    new-array v12, v9, [B

    const/4 v13, 0x7

    aput-byte v13, v12, v7

    .line 62
    array-length v13, v10

    int-to-byte v13, v13

    aput-byte v13, v12, v8

    .line 63
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    move-object/from16 v13, p2

    invoke-virtual {v13, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    new-array v14, v9, [B

    const/16 v15, 0x8

    aput-byte v15, v14, v7

    .line 64
    array-length v15, v6

    int-to-byte v15, v15

    aput-byte v15, v14, v8

    .line 65
    invoke-static {v12, v10}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v10

    invoke-static {v14, v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v6

    invoke-static {v10, v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v6

    .line 68
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;->access$100(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    .line 69
    :goto_2
    invoke-static {v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;->access$100(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_1

    .line 71
    invoke-static {v3}, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;->access$100(Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyEOSTransaction$ToSignObj;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 72
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    new-array v8, v9, [B

    .line 73
    fill-array-data v8, :array_2

    new-array v0, v9, [B

    aput-byte v9, v0, v7

    .line 74
    array-length v7, v15

    int-to-byte v7, v7

    const/16 v16, 0x1

    aput-byte v7, v0, v16

    .line 76
    invoke-static {v8, v4}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v7

    invoke-static {v0, v15}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v0, v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    invoke-static {v7, v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->concat([B[B)[B

    move-result-object v0

    .line 77
    invoke-static {v0, v14, v4}, Lim/imkey/imkeylibrary/core/wallet/transaction/EOSSign;->sign([BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 81
    :cond_1
    new-instance v0, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;

    invoke-direct {v0, v5, v10}, Lim/imkey/imkeylibrary/core/wallet/transaction/TxMultiSignResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 82
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2
    return-object v1

    nop

    :array_0
    .array-data 1
        0x7t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x8t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x20t
    .end array-data
.end method
