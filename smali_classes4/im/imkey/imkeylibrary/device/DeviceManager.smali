.class public Lim/imkey/imkeylibrary/device/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private authCodeStorage(Ljava/lang/String;)V
    .locals 3

    .line 444
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSeId()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;

    invoke-direct {v1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;-><init>()V

    const-string v2, "01"

    .line 448
    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->setStepKey(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1, v0}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->setSeid(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->setAuthCode(Ljava/lang/String;)V

    .line 451
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 454
    new-instance p1, Lim/imkey/imkeylibrary/device/AuthCodeStorage;

    invoke-direct {p1}, Lim/imkey/imkeylibrary/device/AuthCodeStorage;-><init>()V

    invoke-virtual {p1, v1}, Lim/imkey/imkeylibrary/device/AuthCodeStorage;->authCodeStorage(Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;)Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "000000"

    .line 458
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imkey_tsm_server_error_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private deviceCertCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 408
    new-instance v0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;-><init>()V

    const-string v1, "01"

    .line 409
    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->setStepKey(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->setSeid(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p2}, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->setSn(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, p3}, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->setDeviceCert(Ljava/lang/String;)V

    .line 413
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 414
    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 416
    new-instance p1, Lim/imkey/imkeylibrary/device/DeviceCertCheck;

    invoke-direct {p1}, Lim/imkey/imkeylibrary/device/DeviceCertCheck;-><init>()V

    invoke-virtual {p1, v0}, Lim/imkey/imkeylibrary/device/DeviceCertCheck;->deviceCertCheck(Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;)Lim/imkey/imkeylibrary/device/model/DeviceCertCheckResponse;

    move-result-object p1

    .line 419
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "000000"

    .line 420
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p1, "BSE0009"

    .line 421
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "BSE0007"

    .line 423
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "BSE0017"

    .line 425
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "BSE0019"

    .line 427
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 428
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_tsm_device_stop_using"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "imkey_tsm_server_error_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_tsm_device_illegal"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_2
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_tsm_device_not_activated"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 422
    :cond_3
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_tsm_device_authenticity_check_fail"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_4
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckResponse;->getVerifyResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 435
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 436
    :cond_5
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string p2, "imkey_se_cert_invalid"

    invoke-direct {p1, p2}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private genIV(Ljava/lang/String;)[B
    .locals 5

    .line 620
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p1

    const-string v0, "bindingCode"

    .line 621
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 622
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 623
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v2, v0, [B

    .line 627
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method private getCert()Ljava/lang/String;
    .locals 2

    .line 187
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "00A4040000"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "80CABF2106A6048302151800"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activeDevice()V
    .locals 4

    .line 231
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSeId()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSn()Ljava/lang/String;

    move-result-object v1

    .line 234
    new-instance v2, Lim/imkey/imkeylibrary/device/model/SeActivateRequest;

    invoke-direct {v2}, Lim/imkey/imkeylibrary/device/model/SeActivateRequest;-><init>()V

    const-string v3, "01"

    .line 235
    invoke-virtual {v2, v3}, Lim/imkey/imkeylibrary/device/model/SeActivateRequest;->setStepKey(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2, v0}, Lim/imkey/imkeylibrary/device/model/SeActivateRequest;->setSeid(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2, v1}, Lim/imkey/imkeylibrary/device/model/SeActivateRequest;->setSn(Ljava/lang/String;)V

    const-string v0, ""

    .line 238
    invoke-virtual {v2, v0}, Lim/imkey/imkeylibrary/device/model/SeActivateRequest;->setStatusWord(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getCert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lim/imkey/imkeylibrary/device/model/SeActivateRequest;->setDeviceCert(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-virtual {v2, v0}, Lim/imkey/imkeylibrary/device/model/SeActivateRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 243
    new-instance v0, Lim/imkey/imkeylibrary/device/SeActive;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/SeActive;-><init>()V

    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/SeActive;->activeSe(Lim/imkey/imkeylibrary/device/model/SeActivateRequest;)Lim/imkey/imkeylibrary/device/model/SeActivateResponse;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/SeActivateResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "000000"

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "BSE0015"

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "BSE0008"

    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BSE0019"

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_stop_using"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imkey_tsm_server_error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_1
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_illegal"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_2
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_active_fail"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public bindAcquire(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^[A-HJ-NP-Z2-9]{8}$"

    .line 575
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxmJ6bwSFsz3cHKfgYsZO\niEETO5JGpB9A0HZ7rkTqsu9FPQCP+we42f380hiCSH7MTakzyX5JQkKto84CxaBR\niapJQQ53GmboEA5Dyxr2zGELWe5OuyNv84xirXsdEd+9TgVNGeM0k5GjH16JynIS\nkrc4ApV0XYlozFwtIjrGdQuwrKJ3c2h+nNdgZeR/QvSuAFRZvOV0a9dgZGpb0Rm6\nNGmpNfSOuJjLq3LLOUw/7J5BY16ulUEHoXrHuMYyHY8XVa05FanSOY2yaKP2Qs7p\ny+n4Ls1a1k6+3d5mYB3CuJHi/t33La9if6j6FvfGQNtmG+Fdy0J02VdtmNvrIMJT\nCQIDAQAB"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/RsaCrypto;->encryptByPublicKeyWithPadding([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    invoke-direct {p0, v0}, Lim/imkey/imkeylibrary/device/DeviceManager;->authCodeStorage(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->selectApplet()V

    const/16 v0, 0x8a

    new-array v0, v0, [B

    .line 590
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v1

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getPubKey()[B

    move-result-object v1

    const/16 v4, 0x41

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v1

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getSePubKey()[B

    move-result-object v1

    const/16 v3, 0x49

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha256([B)[B

    move-result-object v0

    .line 596
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v1

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getSessionKey()[B

    move-result-object v1

    invoke-direct {p0, p1}, Lim/imkey/imkeylibrary/device/DeviceManager;->genIV(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, v1, p1}, Lim/imkey/imkeylibrary/core/foundation/crypto/AES;->encryptByCBC([B[B[B)[B

    move-result-object p1

    .line 598
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v0

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getPubKey()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 599
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v1

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getPubKey()[B

    move-result-object v1

    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v3

    invoke-virtual {v3}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getPubKey()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v1

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getPubKey()[B

    move-result-object v1

    array-length v1, v1

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, -0x80

    .line 602
    invoke-static {p1, v0}, Lim/imkey/imkeylibrary/core/Apdu;->identityVerify(B[B)Ljava/lang/String;

    move-result-object p1

    .line 603
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 606
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 608
    sget-object v0, Lim/imkey/imkeylibrary/common/Constants;->identityVerifyStatusMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 583
    :catch_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_encrypt_authcode_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 576
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_sdk_illegal_argument"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindCheck()Ljava/lang/String;
    .locals 10

    .line 470
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSeId()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSn()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lim/imkey/imkeylibrary/device/key/KeyManager;->genEncryKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {v0}, Lim/imkey/imkeylibrary/device/key/KeyFileManager;->getKeysFromLocalFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 479
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 484
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lim/imkey/imkeylibrary/device/key/KeyManager;->decryptKeys(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_0
    if-eqz v2, :cond_1

    .line 488
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    :cond_1
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v2

    invoke-virtual {v2}, Lim/imkey/imkeylibrary/device/key/KeyManager;->genLocalKeys()V

    .line 491
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 496
    :cond_2
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->selectApplet()V

    .line 498
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v2

    invoke-virtual {v2}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getPubKey()[B

    move-result-object v2

    .line 500
    invoke-static {v2}, Lim/imkey/imkeylibrary/core/Apdu;->bindCheck([B)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v6

    invoke-virtual {v6, v2}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-static {v2}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 505
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 506
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v8, "00"

    .line 508
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "AA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 511
    :cond_3
    invoke-direct {p0, v0, v1, v2}, Lim/imkey/imkeylibrary/device/DeviceManager;->deviceCertCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :try_start_0
    invoke-static {v2}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 516
    new-instance v2, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;

    array-length v8, v1

    const v9, 0xffff

    and-int/2addr v8, v9

    int-to-short v8, v8

    invoke-direct {v2, v1, v3, v8}, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;-><init>([BSS)V

    const/16 v1, 0x7f49

    .line 517
    invoke-virtual {v2, v1}, Lim/imkey/imkeylibrary/device/model/CertificateSCP11;->getSubTLVValue(S)[B

    move-result-object v1

    const/16 v2, 0x41

    new-array v8, v2, [B

    .line 519
    invoke-static {v1, v6, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lim/imkey/imkeylibrary/device/key/KeyManager;->setSePubKey([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :try_start_1
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v1

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getPrivKey()[B

    move-result-object v1

    invoke-static {v1}, Lim/imkey/imkeylibrary/device/key/KeyConverter;->getPrivKey([B)Ljava/security/PrivateKey;

    move-result-object v1

    .line 531
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v2

    invoke-virtual {v2}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getSePubKey()[B

    move-result-object v2

    invoke-static {v2}, Lim/imkey/imkeylibrary/device/key/KeyConverter;->getPubKey([B)Ljava/security/PublicKey;

    move-result-object v2

    const-string v6, "ECDH"

    const-string v8, "SC"

    .line 532
    invoke-static {v6, v8}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v6

    .line 533
    invoke-virtual {v6, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 534
    invoke-virtual {v6, v2, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 536
    invoke-virtual {v6}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v1

    .line 537
    invoke-static {v1}, Lim/imkey/imkeylibrary/core/foundation/crypto/Hash;->sha1([B)[B

    move-result-object v1

    const/16 v2, 0x10

    new-array v5, v2, [B

    .line 539
    invoke-static {v1, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lim/imkey/imkeylibrary/device/key/KeyManager;->setSessionKey([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 548
    invoke-static {}, Lim/imkey/imkeylibrary/device/key/KeyManager;->getInstance()Lim/imkey/imkeylibrary/device/key/KeyManager;

    move-result-object v1

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/key/KeyManager;->encryptKeys()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v1, v0}, Lim/imkey/imkeylibrary/device/key/KeyFileManager;->saveKeysToLocalFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_4
    sget-object v0, Lim/imkey/imkeylibrary/common/Constants;->bindcheckStatusMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 543
    :catchall_0
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_negotiate_sessionkey_error"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :catch_0
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_se_cert_invalid"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkDevice()V
    .locals 4

    .line 193
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSeId()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSn()Ljava/lang/String;

    move-result-object v1

    .line 197
    new-instance v2, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;

    invoke-direct {v2}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;-><init>()V

    const-string v3, "01"

    .line 198
    invoke-virtual {v2, v3}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setStepKey(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2, v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setSeid(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2, v1}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setSn(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getCert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setDeviceCert(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {v2, v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 205
    new-instance v0, Lim/imkey/imkeylibrary/device/SeCheck;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/SeCheck;-><init>()V

    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/SeCheck;->checkSe(Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;)Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "000000"

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "BSE0009"

    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "BSE0007"

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "BSE0017"

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "BSE0010"

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "BSE0019"

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BSE0012"

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_receipt_check_fail"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    new-instance v1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imkey_tsm_server_error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_1
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_stop_using"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_2
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_oce_cert_check_fail"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_3
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_illegal"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_4
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_not_activated"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_5
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_authenticity_check_fail"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method public checkUpdate()Lim/imkey/imkeylibrary/device/model/ImKeyDevice;
    .locals 6

    .line 263
    new-instance v0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;-><init>()V

    .line 264
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSeId()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSn()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->setSeid(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->setSn(Ljava/lang/String;)V

    .line 270
    new-instance v3, Lim/imkey/imkeylibrary/device/SeQuery;

    invoke-direct {v3}, Lim/imkey/imkeylibrary/device/SeQuery;-><init>()V

    .line 271
    new-instance v4, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;

    invoke-direct {v4}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;-><init>()V

    const-string v5, "01"

    .line 272
    invoke-virtual {v4, v5}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setStepKey(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v4, v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setSeid(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v4, v2}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setSn(Ljava/lang/String;)V

    const-string v1, "1.2.10"

    .line 275
    invoke-virtual {v4, v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->setSdkVersion(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3, v4}, Lim/imkey/imkeylibrary/device/SeQuery;->query(Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;)Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "000000"

    .line 280
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "latest"

    .line 281
    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->setStatus(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->getSdkMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->setSdkMode(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->getAvailableAppList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->setAvailableAppList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string v3, "BSE0007"

    .line 285
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "inactivated"

    .line 286
    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->setStatus(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->getSdkMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->setSdkMode(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->getAvailableAppList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->setAvailableAppList(Ljava/util/List;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "BSE0017"

    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BSE0019"

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BSE0018"

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_update_check_fail"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imkey_tsm_server_error_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_3
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_stop_using"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_4
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v1, "imkey_tsm_device_illegal"

    invoke-direct {v0, v1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3

    .line 372
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSeId()Ljava/lang/String;

    move-result-object v0

    .line 374
    new-instance v1, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;

    invoke-direct {v1}, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;-><init>()V

    const-string v2, "01"

    .line 375
    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->setStepKey(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v1, v0}, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->setSeid(Ljava/lang/String;)V

    .line 377
    invoke-static {p1}, Lim/imkey/imkeylibrary/device/Applet;->appletName2instanceAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->setInstanceAid(Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getCert()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->setDeviceCert(Ljava/lang/String;)V

    const-string p1, ""

    .line 379
    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->setStatusWord(Ljava/lang/String;)V

    .line 380
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 383
    new-instance p1, Lim/imkey/imkeylibrary/device/AppDelete;

    invoke-direct {p1}, Lim/imkey/imkeylibrary/device/AppDelete;-><init>()V

    invoke-virtual {p1, v1}, Lim/imkey/imkeylibrary/device/AppDelete;->delete(Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;)Lim/imkey/imkeylibrary/device/model/AppDeleteResponse;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDeleteResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "000000"

    .line 386
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "BAPP0011"

    .line 387
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BSE0017"

    .line 389
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BSE0010"

    .line 391
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BSE0019"

    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BSE0012"

    .line 395
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_receipt_check_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    :cond_0
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imkey_tsm_server_error_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_device_stop_using"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_2
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_oce_cert_check_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_3
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_device_illegal"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 388
    :cond_4
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_app_delete_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method public displayBindingCode()V
    .locals 2

    .line 565
    invoke-static {}, Lim/imkey/imkeylibrary/core/Apdu;->generateAuthCode()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-void
.end method

.method public download(Ljava/lang/String;)V
    .locals 3

    .line 304
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSeId()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;

    invoke-direct {v1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;-><init>()V

    const-string v2, "01"

    .line 307
    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setStepKey(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, v0}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setSeid(Ljava/lang/String;)V

    .line 309
    invoke-static {p1}, Lim/imkey/imkeylibrary/device/Applet;->appletName2instanceAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setInstanceAid(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getCert()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setDeviceCert(Ljava/lang/String;)V

    const-string p1, ""

    .line 311
    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setStatusWord(Ljava/lang/String;)V

    .line 312
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 315
    new-instance p1, Lim/imkey/imkeylibrary/device/AppDownload;

    invoke-direct {p1}, Lim/imkey/imkeylibrary/device/AppDownload;-><init>()V

    invoke-virtual {p1, v1}, Lim/imkey/imkeylibrary/device/AppDownload;->download(Lim/imkey/imkeylibrary/device/model/AppDownloadRequest;)Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;

    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "000000"

    .line 318
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "BAPP0006"

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BSE0017"

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BSE0010"

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BSE0019"

    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BSE0012"

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_receipt_check_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_0
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imkey_tsm_server_error_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_device_stop_using"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_2
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_oce_cert_check_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_3
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_device_illegal"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_4
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_app_download_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method public getBatteryPower()Ljava/lang/String;
    .locals 2

    .line 112
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "00A4040000"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "00D6FEED01"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 115
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBleName()Ljava/lang/String;
    .locals 2

    .line 155
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "FFDB465400"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public getBleVersion()Ljava/lang/String;
    .locals 5

    .line 178
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "00A4040000"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "80CB800005DFFF02810000"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 5

    .line 91
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "00A4040000"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "80CB800005DFFF02800300"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x2e

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x2

    .line 99
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLifeTime()Ljava/lang/String;
    .locals 2

    .line 130
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "FFDCFEED00"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v1, "89"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_3
    const-string v1, "85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_4
    const-string v1, "84"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_5
    const-string v1, "83"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_6
    const-string v1, "81"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_7
    const-string v1, "80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    const-string v0, "life_time_unknown"

    return-object v0

    :pswitch_8
    const-string v0, "life_time_wallet_ready"

    return-object v0

    :pswitch_9
    const-string v0, "life_time_wallet_recovering"

    return-object v0

    :pswitch_a
    const-string v0, "life_time_wallet_creatting"

    return-object v0

    :pswitch_b
    const-string v0, "life_time_wallet_unready"

    return-object v0

    :pswitch_c
    const-string v0, "life_time_unset_pin"

    return-object v0

    :pswitch_d
    const-string v0, "life_time_device_activated"

    return-object v0

    :pswitch_e
    const-string v0, "life_time_device_inited"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6f8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public getRamSize()I
    .locals 3

    .line 79
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "80CB800005DFFF02814600"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    const/4 v1, 0x4

    const/16 v2, 0x8

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSdkInfo()Lim/imkey/imkeylibrary/device/model/SdkInfo;
    .locals 2

    .line 632
    new-instance v0, Lim/imkey/imkeylibrary/device/model/SdkInfo;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/device/model/SdkInfo;-><init>()V

    const-string v1, "1.2.10"

    .line 633
    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/device/model/SdkInfo;->setSdkVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSeId()Ljava/lang/String;
    .locals 2

    .line 59
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "00A4040000"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "80CB800005DFFF028101"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 62
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 2

    .line 68
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "00A4040000"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    const-string v1, "80CA004400"

    invoke-virtual {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/ByteUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 73
    invoke-static {v1}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method protected selectApplet()V
    .locals 2

    const-string v0, "695F696D6B"

    .line 613
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->select(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-static {v0}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-void
.end method

.method public setBleName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "^[a-zA-Z0-9\\-]{1,12}$"

    .line 165
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->setBleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {p1}, Lim/imkey/imkeylibrary/core/Apdu;->checkResponse(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_0
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_sdk_illegal_argument"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Ljava/lang/String;)V
    .locals 3

    .line 338
    invoke-virtual {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getSeId()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;

    invoke-direct {v1}, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;-><init>()V

    const-string v2, "01"

    .line 341
    invoke-virtual {v1, v2}, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->setStepKey(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1, v0}, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->setSeid(Ljava/lang/String;)V

    .line 343
    invoke-static {p1}, Lim/imkey/imkeylibrary/device/Applet;->appletName2instanceAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->setInstanceAid(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/DeviceManager;->getCert()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->setDeviceCert(Ljava/lang/String;)V

    const-string p1, ""

    .line 345
    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->setStatusWord(Ljava/lang/String;)V

    .line 346
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {v1, p1}, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->setCardRetDataList(Ljava/util/List;)V

    .line 349
    new-instance p1, Lim/imkey/imkeylibrary/device/AppUpdate;

    invoke-direct {p1}, Lim/imkey/imkeylibrary/device/AppUpdate;-><init>()V

    invoke-virtual {p1, v1}, Lim/imkey/imkeylibrary/device/AppUpdate;->update(Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;)Lim/imkey/imkeylibrary/device/model/AppUpdateResponse;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/device/model/AppUpdateResponse;->get_ReturnCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "000000"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "BAPP0008"

    .line 353
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BSE0017"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BSE0010"

    .line 357
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BSE0019"

    .line 359
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BSE0012"

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_receipt_check_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_0
    new-instance v0, Lim/imkey/imkeylibrary/exception/ImkeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imkey_tsm_server_error_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_device_stop_using"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_2
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_oce_cert_check_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_3
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_device_illegal"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_4
    new-instance p1, Lim/imkey/imkeylibrary/exception/ImkeyException;

    const-string v0, "imkey_tsm_app_update_fail"

    invoke-direct {p1, v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method
