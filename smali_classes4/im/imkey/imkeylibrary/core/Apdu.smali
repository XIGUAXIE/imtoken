.class public Lim/imkey/imkeylibrary/core/Apdu;
.super Ljava/lang/Object;
.source "Apdu.java"


# static fields
.field public static final Hash_ALL:I = 0x1

.field private static final LC_MAX:I = 0xf5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindCheck([B)Ljava/lang/String;
    .locals 6

    .line 336
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 337
    aput-byte v2, v1, v3

    const/16 v2, 0x71

    const/4 v4, 0x1

    .line 338
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    .line 339
    aput-byte v3, v1, v2

    const/4 v2, 0x3

    .line 340
    aput-byte v3, v1, v2

    .line 341
    array-length v2, p0

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    .line 342
    array-length v2, p0

    const/4 v5, 0x5

    invoke-static {p0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 343
    aput-byte v3, v1, v0

    .line 344
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static btcCoinReg([B)Ljava/lang/String;
    .locals 6

    .line 229
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 230
    aput-byte v2, v1, v3

    const/16 v2, 0x36

    const/4 v4, 0x1

    .line 231
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    .line 232
    aput-byte v3, v1, v2

    const/4 v2, 0x3

    .line 233
    aput-byte v3, v1, v2

    .line 234
    array-length v2, p0

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    .line 235
    array-length v2, p0

    const/4 v5, 0x5

    invoke-static {p0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 236
    aput-byte v3, v1, v0

    .line 237
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static btcPrepare(BB[B)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB[B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0xf5

    div-int/2addr v1, v3

    add-int/2addr v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, -0x80

    if-ne v5, v6, :cond_1

    .line 514
    array-length v6, p2

    rem-int/2addr v6, v3

    if-nez v6, :cond_0

    const/16 v6, 0xf5

    goto :goto_1

    :cond_0
    array-length v6, p2

    rem-int/2addr v6, v3

    :goto_1
    add-int/lit8 v12, v6, 0x6

    .line 515
    new-array v12, v12, [B

    .line 516
    aput-byte v11, v12, v4

    .line 517
    aput-byte p0, v12, v2

    .line 518
    aput-byte p1, v12, v10

    .line 519
    aput-byte v11, v12, v9

    int-to-byte v9, v6

    .line 520
    aput-byte v9, v12, v8

    mul-int/lit16 v8, v5, 0xf5

    .line 521
    invoke-static {p2, v8, v12, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    invoke-static {v12}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/16 v6, 0xfb

    new-array v6, v6, [B

    aput-byte v11, v6, v4

    aput-byte p0, v6, v2

    aput-byte p1, v6, v10

    aput-byte v4, v6, v9

    const/16 v9, -0xb

    aput-byte v9, v6, v8

    mul-int/lit16 v8, v5, 0xf5

    .line 530
    invoke-static {p2, v8, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static btcPrepare(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x41

    .line 78
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/core/Apdu;->prepare(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static btcPrepareInput(BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 377
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 378
    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    const/16 v1, -0x80

    const/4 v2, 0x0

    .line 379
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x41

    .line 380
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 381
    aput-byte p0, v0, v1

    const/4 p0, 0x3

    .line 382
    aput-byte v2, v0, p0

    .line 383
    array-length p0, p1

    int-to-byte p0, p0

    const/4 v1, 0x4

    aput-byte p0, v0, v1

    .line 385
    array-length p0, p1

    const/4 v1, 0x5

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static btcSegwitPrepare(B[B)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B[B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0xf5

    div-int/2addr v1, v3

    add-int/2addr v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x31

    const/16 v12, -0x80

    if-ne v5, v6, :cond_1

    .line 402
    array-length v6, p1

    rem-int/2addr v6, v3

    if-nez v6, :cond_0

    const/16 v6, 0xf5

    goto :goto_1

    :cond_0
    array-length v6, p1

    rem-int/2addr v6, v3

    :goto_1
    add-int/lit8 v13, v6, 0x6

    .line 403
    new-array v13, v13, [B

    .line 404
    aput-byte v12, v13, v4

    .line 405
    aput-byte v11, v13, v2

    .line 406
    aput-byte p0, v13, v10

    .line 407
    aput-byte v12, v13, v9

    int-to-byte v9, v6

    .line 408
    aput-byte v9, v13, v8

    mul-int/lit16 v8, v5, 0xf5

    .line 409
    invoke-static {p1, v8, v13, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    invoke-static {v13}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/16 v6, 0xfb

    new-array v6, v6, [B

    aput-byte v12, v6, v4

    aput-byte v11, v6, v2

    aput-byte p0, v6, v10

    aput-byte v4, v6, v9

    const/16 v9, -0xb

    aput-byte v9, v6, v8

    mul-int/lit16 v8, v5, 0xf5

    .line 418
    invoke-static {p1, v8, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static btcSegwitPrepare(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x31

    .line 86
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/core/Apdu;->prepare(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static btcSegwitSign(Ljava/lang/Boolean;I[B)Ljava/lang/String;
    .locals 6

    .line 432
    array-length v0, p2

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 433
    aput-byte v2, v1, v3

    const/16 v4, 0x32

    const/4 v5, 0x1

    .line 434
    aput-byte v4, v1, v5

    .line 435
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 p0, 0x2

    aput-byte v2, v1, p0

    const/4 p0, 0x3

    int-to-byte p1, p1

    .line 436
    aput-byte p1, v1, p0

    const/4 p0, 0x4

    .line 437
    array-length p1, p2

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    const/4 p0, 0x5

    .line 438
    array-length p1, p2

    invoke-static {p2, v3, v1, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v5

    .line 439
    aput-byte v3, v1, v0

    .line 440
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static btcSign(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x42

    .line 82
    invoke-static {v0, p0, p1, p2}, Lim/imkey/imkeylibrary/core/Apdu;->sign(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static btcXpub(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 91
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 92
    aput-byte v2, v1, v3

    const/16 v2, 0x43

    const/4 v4, 0x1

    .line 93
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 95
    aput-byte v4, v1, v2

    goto :goto_0

    .line 97
    :cond_0
    aput-byte v3, v1, v2

    :goto_0
    const/4 p1, 0x3

    .line 99
    aput-byte v3, v1, p1

    const/4 p1, 0x4

    .line 100
    array-length v2, p0

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    const/4 p1, 0x5

    .line 101
    array-length v2, p0

    invoke-static {p0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 102
    aput-byte v3, v1, v0

    .line 103
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkImKeyStatus(Ljava/lang/String;)V
    .locals 1

    const-string v0, "F000"

    .line 311
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "F080"

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "F081"

    .line 317
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 318
    :cond_0
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_pin_not_verified"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 315
    :cond_1
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_in_menu_page"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :cond_2
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_wallet_not_created"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkResponse(Ljava/lang/String;)V
    .locals 3

    const-string v0, "9000"

    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "6940"

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "6985"

    .line 283
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "6A86"

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "imkey_command_format_error"

    if-nez v0, :cond_9

    const-string v0, "6E00"

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "6A80"

    .line 289
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "6A82"

    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "6700"

    .line 293
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "6942"

    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "6F01"

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "6D00"

    .line 299
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "6941"

    .line 301
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_exceeded_max_utxo_number"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_1
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imkey_command_execute_fail_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_2
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_applet_function_not_supported"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 298
    :cond_3
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_bluetooth_channel_error"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 296
    :cond_4
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_signature_verify_fail"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 294
    :cond_5
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_apdu_wrong_length"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_6
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_applet_not_exist"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 290
    :cond_7
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_command_data_error"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_8
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 286
    :cond_9
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    invoke-direct {p0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :cond_a
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_conditions_not_satisfied"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_b
    new-instance p0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_user_not_confirmed"

    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cosmosCoinReg([B)Ljava/lang/String;
    .locals 6

    .line 265
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 266
    aput-byte v2, v1, v3

    const/16 v2, 0x76

    const/4 v4, 0x1

    .line 267
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    .line 268
    aput-byte v3, v1, v2

    const/4 v2, 0x3

    .line 269
    aput-byte v3, v1, v2

    .line 270
    array-length v2, p0

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    .line 271
    array-length v2, p0

    const/4 v5, 0x5

    invoke-static {p0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 272
    aput-byte v3, v1, v0

    .line 273
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cosmosPrepare(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x71

    .line 157
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/core/Apdu;->prepare(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static cosmosPub(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 209
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 210
    aput-byte v2, v1, v3

    const/16 v2, 0x73

    const/4 v4, 0x1

    .line 211
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 213
    aput-byte v4, v1, v2

    goto :goto_0

    .line 215
    :cond_0
    aput-byte v3, v1, v2

    :goto_0
    const/4 p1, 0x3

    .line 217
    aput-byte v3, v1, p1

    const/4 p1, 0x4

    .line 218
    array-length v2, p0

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    const/4 p1, 0x5

    .line 219
    array-length v2, p0

    invoke-static {p0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 220
    aput-byte v3, v1, v0

    .line 221
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cosmosSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x72

    .line 115
    invoke-static {v1, v0, v0, p0}, Lim/imkey/imkeylibrary/core/Apdu;->sign(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static eosCoinReg([B)Ljava/lang/String;
    .locals 6

    .line 253
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 254
    aput-byte v2, v1, v3

    const/16 v2, 0x66

    const/4 v4, 0x1

    .line 255
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    .line 256
    aput-byte v3, v1, v2

    const/4 v2, 0x3

    .line 257
    aput-byte v3, v1, v2

    .line 258
    array-length v2, p0

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    .line 259
    array-length v2, p0

    const/4 v5, 0x5

    invoke-static {p0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 260
    aput-byte v3, v1, v0

    .line 261
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static eosMsgPrepare(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 174
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/core/Apdu;->prepare(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static eosMsgSign(I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x65

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, v1, v0

    const/4 p0, 0x7

    aput-byte v3, v1, p0

    .line 187
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static eosPrepare(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x61

    .line 154
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/core/Apdu;->prepare(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static eosPub(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 192
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 193
    aput-byte v2, v1, v3

    const/16 v2, 0x63

    const/4 v4, 0x1

    .line 194
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 196
    aput-byte v4, v1, v2

    goto :goto_0

    .line 198
    :cond_0
    aput-byte v3, v1, v2

    :goto_0
    const/4 p1, 0x3

    .line 200
    aput-byte v3, v1, p1

    const/4 p1, 0x4

    .line 201
    array-length v2, p0

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    const/4 p1, 0x5

    .line 202
    array-length v2, p0

    invoke-static {p0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 203
    aput-byte v3, v1, v0

    .line 204
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static eosTxSign(I)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x62

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput-byte v0, v1, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, v1, v0

    const/4 p0, 0x7

    aput-byte v3, v1, p0

    .line 170
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ethCoinReg([B)Ljava/lang/String;
    .locals 6

    .line 241
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 242
    aput-byte v2, v1, v3

    const/16 v2, 0x56

    const/4 v4, 0x1

    .line 243
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    .line 244
    aput-byte v3, v1, v2

    const/4 v2, 0x3

    .line 245
    aput-byte v3, v1, v2

    .line 246
    array-length v2, p0

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    .line 247
    array-length v2, p0

    const/4 v5, 0x5

    invoke-static {p0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 248
    aput-byte v3, v1, v0

    .line 249
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ethMsgPrepare(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x54

    .line 136
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/core/Apdu;->prepare(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static ethMsgSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 141
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 142
    aput-byte v2, v1, v3

    const/16 v2, 0x55

    const/4 v4, 0x1

    .line 143
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    .line 144
    aput-byte v3, v1, v2

    const/4 v2, 0x3

    .line 145
    aput-byte v3, v1, v2

    .line 146
    array-length v2, p0

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    .line 147
    array-length v2, p0

    const/4 v5, 0x5

    invoke-static {p0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 148
    aput-byte v3, v1, v0

    .line 149
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ethPrepare(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x51

    .line 107
    invoke-static {v0, p0}, Lim/imkey/imkeylibrary/core/Apdu;->prepare(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static ethSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x52

    .line 111
    invoke-static {v1, v0, v0, p0}, Lim/imkey/imkeylibrary/core/Apdu;->sign(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ethXpub(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 120
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 121
    aput-byte v2, v1, v3

    const/16 v2, 0x53

    const/4 v4, 0x1

    .line 122
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 124
    aput-byte v4, v1, v2

    goto :goto_0

    .line 126
    :cond_0
    aput-byte v3, v1, v2

    :goto_0
    const/4 p1, 0x3

    .line 128
    aput-byte v3, v1, p1

    const/4 p1, 0x4

    .line 129
    array-length v2, p0

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    const/4 p1, 0x5

    .line 130
    array-length v2, p0

    invoke-static {p0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 131
    aput-byte v3, v1, v0

    .line 132
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateAuthCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 348
    fill-array-data v0, :array_0

    .line 354
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x80t
        0x72t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getResponseData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static header(BBBBB)[B
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    aput-byte p1, v0, p0

    const/4 p0, 0x2

    aput-byte p2, v0, p0

    const/4 p0, 0x3

    aput-byte p3, v0, p0

    const/4 p0, 0x4

    aput-byte p4, v0, p0

    return-object v0
.end method

.method public static identityVerify(B[B)Ljava/lang/String;
    .locals 5

    .line 358
    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 359
    aput-byte v2, v1, v3

    const/16 v2, 0x73

    const/4 v4, 0x1

    .line 360
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    .line 361
    aput-byte p0, v1, v2

    const/4 p0, 0x3

    .line 362
    aput-byte v3, v1, p0

    .line 363
    array-length p0, p1

    int-to-byte p0, p0

    const/4 v2, 0x4

    aput-byte p0, v1, v2

    .line 364
    array-length p0, p1

    const/4 v2, 0x5

    invoke-static {p1, v3, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 365
    aput-byte v3, v1, v0

    .line 366
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static omniPrepareData(BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 451
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 453
    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    const/16 v1, -0x80

    const/4 v2, 0x0

    .line 454
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x44

    .line 455
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 457
    aput-byte p0, v0, v1

    const/4 p0, 0x3

    .line 459
    aput-byte v2, v0, p0

    .line 460
    array-length p0, p1

    int-to-byte p0, p0

    const/4 v1, 0x4

    aput-byte p0, v0, v1

    .line 462
    array-length p0, p1

    const/4 v1, 0x5

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static omniSegwitPrepare(B[B)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B[B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0xf5

    div-int/2addr v1, v3

    add-int/2addr v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x34

    const/16 v12, -0x80

    if-ne v5, v6, :cond_1

    .line 479
    array-length v6, p1

    rem-int/2addr v6, v3

    if-nez v6, :cond_0

    const/16 v6, 0xf5

    goto :goto_1

    :cond_0
    array-length v6, p1

    rem-int/2addr v6, v3

    :goto_1
    add-int/lit8 v13, v6, 0x6

    .line 480
    new-array v13, v13, [B

    .line 481
    aput-byte v12, v13, v4

    .line 482
    aput-byte v11, v13, v2

    .line 483
    aput-byte p0, v13, v10

    .line 484
    aput-byte v12, v13, v9

    int-to-byte v9, v6

    .line 485
    aput-byte v9, v13, v8

    mul-int/lit16 v8, v5, 0xf5

    .line 486
    invoke-static {p1, v8, v13, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    invoke-static {v13}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/16 v6, 0xfb

    new-array v6, v6, [B

    aput-byte v12, v6, v4

    aput-byte v11, v6, v2

    aput-byte p0, v6, v10

    aput-byte v4, v6, v9

    const/16 v9, -0xb

    aput-byte v9, v6, v8

    mul-int/lit16 v8, v5, 0xf5

    .line 495
    invoke-static {p1, v8, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    invoke-static {v6}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static prepare(ILjava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {p1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 32
    array-length v1, p1

    const/16 v2, 0xf5

    div-int/2addr v1, v2

    array-length v3, p1

    rem-int/2addr v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    add-int/2addr v1, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    add-int/lit8 v6, v1, -0x1

    if-ne v3, v6, :cond_1

    .line 36
    array-length v7, p1

    mul-int/lit16 v8, v6, 0xf5

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    new-array v7, v7, [B

    goto :goto_2

    :cond_1
    const/16 v7, 0xfb

    new-array v7, v7, [B

    :goto_2
    const/16 v8, -0x80

    .line 41
    aput-byte v8, v7, v5

    int-to-byte v9, p0

    .line 42
    aput-byte v9, v7, v4

    const/4 v9, 0x2

    if-nez v3, :cond_2

    .line 45
    aput-byte v5, v7, v9

    goto :goto_3

    .line 47
    :cond_2
    aput-byte v8, v7, v9

    :goto_3
    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-ne v3, v6, :cond_3

    .line 50
    aput-byte v8, v7, v11

    .line 51
    array-length v8, p1

    mul-int/lit16 v6, v6, 0xf5

    sub-int/2addr v8, v6

    int-to-byte v6, v8

    aput-byte v6, v7, v10

    mul-int/lit16 v6, v3, 0xf5

    .line 52
    array-length v8, p1

    sub-int/2addr v8, v6

    invoke-static {p1, v6, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 54
    :cond_3
    aput-byte v5, v7, v11

    const/16 v6, -0xb

    .line 55
    aput-byte v6, v7, v10

    mul-int/lit16 v6, v3, 0xf5

    .line 56
    invoke-static {p1, v6, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    :goto_4
    array-length v6, v7

    sub-int/2addr v6, v4

    aput-byte v5, v7, v6

    .line 59
    invoke-static {v7}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static select(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 17
    invoke-static {p0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 18
    array-length v0, p0

    int-to-byte v0, v0

    const/4 v1, 0x0

    const/16 v2, -0x5c

    const/4 v3, 0x4

    invoke-static {v1, v2, v3, v1, v0}, Lim/imkey/imkeylibrary/core/Apdu;->header(BBBBB)[B

    move-result-object v0

    .line 19
    array-length v2, v0

    array-length v3, p0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 20
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    array-length v0, v0

    array-length v3, p0

    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setBleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 324
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 325
    aput-byte v2, v1, v3

    const/16 v2, -0x26

    const/4 v4, 0x1

    .line 326
    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/16 v5, 0x46

    .line 327
    aput-byte v5, v1, v2

    const/4 v2, 0x3

    const/16 v5, 0x54

    .line 328
    aput-byte v5, v1, v2

    .line 329
    array-length v2, p0

    int-to-byte v2, v2

    const/4 v5, 0x4

    aput-byte v2, v1, v5

    .line 330
    array-length v2, p0

    const/4 v5, 0x5

    invoke-static {p0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v4

    .line 331
    aput-byte v3, v1, v0

    .line 332
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sign(IIILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 65
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    .line 66
    array-length v0, p3

    add-int/lit8 v0, v0, 0x6

    new-array v1, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 67
    aput-byte v2, v1, v3

    int-to-byte p0, p0

    const/4 v2, 0x1

    .line 68
    aput-byte p0, v1, v2

    int-to-byte p0, p1

    const/4 p1, 0x2

    .line 69
    aput-byte p0, v1, p1

    int-to-byte p0, p2

    const/4 p1, 0x3

    .line 70
    aput-byte p0, v1, p1

    .line 71
    array-length p0, p3

    int-to-byte p0, p0

    const/4 p1, 0x4

    aput-byte p0, v1, p1

    .line 72
    array-length p0, p3

    const/4 p1, 0x5

    invoke-static {p3, v3, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v2

    .line 73
    aput-byte v3, v1, v0

    .line 74
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
