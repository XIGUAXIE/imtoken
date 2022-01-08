.class public Lorg/spongycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;
.source "TlsUtils.java"


# static fields
.field public static final EMPTY_BYTES:[B

.field public static final EXT_signature_algorithms:Ljava/lang/Integer;

.field static final SSL3_CONST:[[B

.field static final SSL_CLIENT:[B

.field static final SSL_SERVER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 46
    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    const/16 v0, 0xd

    .line 48
    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 1282
    fill-array-data v1, :array_0

    sput-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    new-array v0, v0, [B

    .line 1283
    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    .line 1286
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->genConst()[[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B
    .locals 1

    .line 870
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    .line 872
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 877
    invoke-static {p2}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 878
    invoke-static {p2, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object p3

    .line 880
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getPrfAlgorithm()I

    move-result p0

    if-nez p0, :cond_0

    .line 884
    invoke-static {p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF_legacy([B[B[BI)[B

    move-result-object p0

    return-object p0

    .line 887
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createPRFHash(I)Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    .line 888
    new-array p2, p4, [B

    .line 889
    invoke-static {p0, p1, p3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    return-object p2

    .line 874
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No PRF available for SSLv3 session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static PRF_legacy([BLjava/lang/String;[BI)[B
    .locals 0

    .line 895
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 896
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object p2

    .line 898
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF_legacy([B[B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method static PRF_legacy([B[B[BI)[B
    .locals 6

    .line 903
    array-length p1, p0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x2

    div-int/2addr p1, v1

    .line 904
    new-array v2, p1, [B

    .line 905
    new-array v3, p1, [B

    const/4 v4, 0x0

    .line 906
    invoke-static {p0, v4, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    array-length v5, p0

    sub-int/2addr v5, p1

    invoke-static {p0, v5, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    new-array p0, p3, [B

    .line 910
    new-array p1, p3, [B

    .line 911
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    invoke-static {v0, v2, p2, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 912
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    invoke-static {v0, v3, p2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    :goto_0
    if-ge v4, p3, :cond_0

    .line 915
    aget-byte p2, p0, v4

    aget-byte v0, p1, v4

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B
    .locals 3

    .line 969
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v1

    .line 971
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v0

    .line 974
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 976
    invoke-static {v1, v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock_SSL([B[BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "key expansion"

    .line 979
    invoke-static {p0, v1, v2, v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method static calculateKeyBlock_SSL([B[BI)[B
    .locals 12

    const/4 v0, 0x1

    .line 984
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    const/4 v2, 0x2

    .line 985
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    .line 986
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 987
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v5, v4, [B

    add-int v6, p2, v3

    .line 988
    new-array v6, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, p2, :cond_0

    .line 993
    sget-object v10, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v10, v10, v9

    .line 995
    array-length v11, v10

    invoke-interface {v2, v10, v7, v11}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 996
    array-length v10, p0

    invoke-interface {v2, p0, v7, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 997
    array-length v10, p1

    invoke-interface {v2, p1, v7, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 998
    invoke-interface {v2, v5, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1000
    array-length v10, p0

    invoke-interface {v1, p0, v7, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1001
    invoke-interface {v1, v5, v7, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1002
    invoke-interface {v1, v6, v8}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/2addr v8, v3

    add-int/2addr v9, v0

    goto :goto_0

    .line 1008
    :cond_0
    new-array p0, p2, [B

    .line 1009
    invoke-static {v6, v7, p0, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method static calculateMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;[B)[B
    .locals 3

    .line 1015
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 1016
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v0

    .line 1018
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateMasterSecret_SSL([B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0x30

    const-string v2, "master secret"

    .line 1023
    invoke-static {p0, p1, v2, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method static calculateMasterSecret_SSL([B[B)[B
    .locals 11

    const/4 v0, 0x1

    .line 1028
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x2

    .line 1029
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 1030
    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 1031
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v4, v3, [B

    mul-int/lit8 v5, v2, 0x3

    .line 1033
    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x3

    if-ge v7, v9, :cond_0

    .line 1038
    sget-object v9, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v9, v9, v7

    .line 1040
    array-length v10, v9

    invoke-interface {v1, v9, v6, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1041
    array-length v9, p0

    invoke-interface {v1, p0, v6, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1042
    array-length v9, p1

    invoke-interface {v1, p1, v6, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1043
    invoke-interface {v1, v4, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1045
    array-length v9, p0

    invoke-interface {v0, p0, v6, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1046
    invoke-interface {v0, v4, v6, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1047
    invoke-interface {v0, v5, v8}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/2addr v8, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method static calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B
    .locals 2

    .line 1057
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 1062
    :cond_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v0

    .line 1063
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v1

    .line 1064
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getVerifyDataLength()I

    move-result v0

    .line 1066
    invoke-static {p0, v1, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static checkUint16(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint16(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint16(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint16(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint24(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint24(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint24(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint24(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint32(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint32(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint48(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint48(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint64(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint64(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint8(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint8(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static checkUint8(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1107
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown HashAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1105
    :pswitch_0
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA512Digest;)V

    return-object p0

    .line 1103
    :pswitch_1
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA384Digest;)V

    return-object p0

    .line 1101
    :pswitch_2
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA256Digest;)V

    return-object p0

    .line 1099
    :pswitch_3
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA224Digest;)V

    return-object p0

    .line 1097
    :pswitch_4
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    return-object p0

    .line 1095
    :pswitch_5
    new-instance p0, Lorg/spongycastle/crypto/digests/MD5Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>(Lorg/spongycastle/crypto/digests/MD5Digest;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static clonePRFHash(ILorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;
    .locals 0

    if-eqz p0, :cond_0

    .line 1129
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result p0

    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    .line 1127
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/CombinedHash;

    check-cast p1, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>(Lorg/spongycastle/crypto/tls/CombinedHash;)V

    return-object p0
.end method

.method static concat([B[B)[B
    .locals 3

    .line 922
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 923
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 924
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static createHash(S)Lorg/spongycastle/crypto/Digest;
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 1086
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown HashAlgorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1084
    :pswitch_0
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object p0

    .line 1082
    :pswitch_1
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object p0

    .line 1080
    :pswitch_2
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object p0

    .line 1078
    :pswitch_3
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>()V

    return-object p0

    .line 1076
    :pswitch_4
    new-instance p0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object p0

    .line 1074
    :pswitch_5
    new-instance p0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createPRFHash(I)Lorg/spongycastle/crypto/Digest;
    .locals 0

    if-eqz p0, :cond_0

    .line 1118
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result p0

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object p0

    return-object p0

    .line 1116
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    return-object p0
.end method

.method public static createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 781
    invoke-static {p0, v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V

    .line 783
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static createTlsSigner(S)Lorg/spongycastle/crypto/tls/TlsSigner;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    .line 1274
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsECDSASigner;-><init>()V

    return-object p0

    .line 1278
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'clientCertificateType\' is not a type with signing capability"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1272
    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    return-object p0

    .line 1276
    :cond_2
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    return-object p0
.end method

.method public static encodeOpaque8([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 408
    array-length v0, p0

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->prepend([BB)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 814
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_3

    .line 822
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 823
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 824
    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    const/4 v0, 0x0

    .line 825
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 827
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    if-nez p1, :cond_1

    .line 828
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 834
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 837
    :cond_1
    :goto_1
    invoke-virtual {v1, p2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 817
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeUint16ArrayWithUint16Length([I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 421
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 422
    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([I[BI)V

    return-object v0
.end method

.method public static encodeUint8ArrayWithUint8Length([S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 414
    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([S[BI)V

    return-object v0
.end method

.method private static genConst()[[B
    .locals 6

    const/16 v0, 0xa

    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 1294
    new-array v4, v3, [B

    add-int/lit8 v5, v2, 0x41

    int-to-byte v5, v5

    .line 1295
    invoke-static {v4, v5}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 1296
    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getCipherType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1310
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 1342
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static getClientCertificateType(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1172
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 1177
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p0

    .line 1178
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    .line 1181
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    .line 1182
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1202
    instance-of v0, p1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    const/16 v1, 0x80

    if-eqz v0, :cond_1

    .line 1204
    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    const/4 p0, 0x1

    return p0

    .line 1212
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v0, :cond_2

    .line 1214
    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    const/4 p0, 0x2

    return p0

    .line 1223
    :cond_2
    instance-of p1, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz p1, :cond_4

    .line 1225
    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    const/16 p0, 0x40

    return p0

    .line 1184
    :cond_3
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x50

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :catch_0
    :cond_4
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x2b

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static getDefaultDSSSignatureAlgorithms()Ljava/util/Vector;
    .locals 2

    .line 698
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultECDSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    .line 703
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    .line 708
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptionAlgorithm(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    const/16 v2, 0xc

    const/16 v3, 0x8

    const/16 v4, 0xd

    const/16 v5, 0x9

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    .line 1638
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :pswitch_0
    const/16 p0, 0xe

    return p0

    :pswitch_1
    return v4

    :pswitch_2
    return v2

    :pswitch_3
    return v5

    :sswitch_0
    const/16 p0, 0x65

    return p0

    :sswitch_1
    const/16 p0, 0x64

    return p0

    :sswitch_2
    const/16 p0, 0x66

    return p0

    :sswitch_3
    const/16 p0, 0x12

    return p0

    :sswitch_4
    const/16 p0, 0x10

    return p0

    :sswitch_5
    const/16 p0, 0x11

    return p0

    :sswitch_6
    const/16 p0, 0xf

    return p0

    :sswitch_7
    const/16 p0, 0x14

    return p0

    :sswitch_8
    const/16 p0, 0x13

    return p0

    :sswitch_9
    return v4

    :pswitch_4
    :sswitch_a
    return v5

    :pswitch_5
    :sswitch_b
    return v3

    :sswitch_c
    return v4

    :sswitch_d
    return v2

    :pswitch_6
    :sswitch_e
    return v1

    :sswitch_f
    return v5

    :pswitch_7
    :sswitch_10
    return v3

    :pswitch_8
    :sswitch_11
    const/16 p0, 0xb

    return p0

    :pswitch_9
    :sswitch_12
    const/16 p0, 0xa

    return p0

    :pswitch_a
    :sswitch_13
    const/4 p0, 0x7

    return p0

    :cond_0
    :pswitch_b
    :sswitch_14
    return v0

    :cond_1
    :pswitch_c
    :sswitch_15
    return v1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_13
        0xd -> :sswitch_13
        0x10 -> :sswitch_13
        0x13 -> :sswitch_13
        0x16 -> :sswitch_13
        0x18 -> :sswitch_14
        0xa8 -> :sswitch_12
        0xa9 -> :sswitch_11
        0xaa -> :sswitch_12
        0xab -> :sswitch_11
        0xac -> :sswitch_12
        0xad -> :sswitch_11
        0xae -> :sswitch_10
        0xaf -> :sswitch_f
        0xb0 -> :sswitch_e
        0xb1 -> :sswitch_e
        0xb2 -> :sswitch_10
        0xb3 -> :sswitch_f
        0xb4 -> :sswitch_e
        0xb5 -> :sswitch_e
        0xb6 -> :sswitch_10
        0xb7 -> :sswitch_f
        0xb8 -> :sswitch_e
        0xb9 -> :sswitch_e
        0xba -> :sswitch_d
        0xbb -> :sswitch_d
        0xbc -> :sswitch_d
        0xbd -> :sswitch_d
        0xbe -> :sswitch_d
        0xc0 -> :sswitch_c
        0xc1 -> :sswitch_c
        0xc2 -> :sswitch_c
        0xc3 -> :sswitch_c
        0xc4 -> :sswitch_c
        0xc001 -> :sswitch_15
        0xc002 -> :sswitch_14
        0xc003 -> :sswitch_13
        0xc004 -> :sswitch_b
        0xc005 -> :sswitch_a
        0xc006 -> :sswitch_15
        0xc007 -> :sswitch_14
        0xc008 -> :sswitch_13
        0xc009 -> :sswitch_b
        0xc00a -> :sswitch_a
        0xc00b -> :sswitch_15
        0xc00c -> :sswitch_14
        0xc00d -> :sswitch_13
        0xc00e -> :sswitch_b
        0xc00f -> :sswitch_a
        0xc010 -> :sswitch_15
        0xc011 -> :sswitch_14
        0xc012 -> :sswitch_13
        0xc013 -> :sswitch_b
        0xc014 -> :sswitch_a
        0xc016 -> :sswitch_14
        0xc01a -> :sswitch_13
        0xc01b -> :sswitch_13
        0xc01c -> :sswitch_13
        0xc01d -> :sswitch_b
        0xc01e -> :sswitch_b
        0xc01f -> :sswitch_b
        0xc020 -> :sswitch_a
        0xc021 -> :sswitch_a
        0xc022 -> :sswitch_a
        0xc023 -> :sswitch_10
        0xc024 -> :sswitch_f
        0xc025 -> :sswitch_10
        0xc026 -> :sswitch_f
        0xc027 -> :sswitch_10
        0xc028 -> :sswitch_f
        0xc029 -> :sswitch_10
        0xc02a -> :sswitch_f
        0xc02b -> :sswitch_12
        0xc02c -> :sswitch_11
        0xc02d -> :sswitch_12
        0xc02e -> :sswitch_11
        0xc02f -> :sswitch_12
        0xc030 -> :sswitch_11
        0xc031 -> :sswitch_12
        0xc032 -> :sswitch_11
        0xc033 -> :sswitch_14
        0xc034 -> :sswitch_13
        0xc035 -> :sswitch_b
        0xc036 -> :sswitch_a
        0xc037 -> :sswitch_10
        0xc038 -> :sswitch_f
        0xc039 -> :sswitch_15
        0xc03a -> :sswitch_e
        0xc03b -> :sswitch_e
        0xc072 -> :sswitch_d
        0xc073 -> :sswitch_9
        0xc074 -> :sswitch_d
        0xc075 -> :sswitch_9
        0xc076 -> :sswitch_d
        0xc077 -> :sswitch_9
        0xc078 -> :sswitch_d
        0xc079 -> :sswitch_9
        0xc07a -> :sswitch_8
        0xc07b -> :sswitch_7
        0xc07c -> :sswitch_8
        0xc07d -> :sswitch_7
        0xc07e -> :sswitch_8
        0xc07f -> :sswitch_7
        0xc080 -> :sswitch_8
        0xc081 -> :sswitch_7
        0xc082 -> :sswitch_8
        0xc083 -> :sswitch_7
        0xc086 -> :sswitch_8
        0xc087 -> :sswitch_7
        0xc088 -> :sswitch_8
        0xc089 -> :sswitch_7
        0xc08a -> :sswitch_8
        0xc08b -> :sswitch_7
        0xc08c -> :sswitch_8
        0xc08d -> :sswitch_7
        0xc08e -> :sswitch_8
        0xc08f -> :sswitch_7
        0xc090 -> :sswitch_8
        0xc091 -> :sswitch_7
        0xc092 -> :sswitch_8
        0xc093 -> :sswitch_7
        0xc094 -> :sswitch_d
        0xc095 -> :sswitch_9
        0xc096 -> :sswitch_d
        0xc097 -> :sswitch_9
        0xc098 -> :sswitch_d
        0xc099 -> :sswitch_9
        0xc09a -> :sswitch_d
        0xc09b -> :sswitch_9
        0xc09c -> :sswitch_6
        0xc09d -> :sswitch_5
        0xc09e -> :sswitch_6
        0xc09f -> :sswitch_5
        0xc0a0 -> :sswitch_4
        0xc0a1 -> :sswitch_3
        0xc0a2 -> :sswitch_4
        0xc0a3 -> :sswitch_3
        0xc0a4 -> :sswitch_6
        0xc0a5 -> :sswitch_5
        0xc0a6 -> :sswitch_6
        0xc0a7 -> :sswitch_5
        0xc0a8 -> :sswitch_4
        0xc0a9 -> :sswitch_3
        0xc0aa -> :sswitch_4
        0xc0ab -> :sswitch_3
        0xcc13 -> :sswitch_2
        0xcc14 -> :sswitch_2
        0xcc15 -> :sswitch_2
        0xe410 -> :sswitch_1
        0xe411 -> :sswitch_0
        0xe412 -> :sswitch_1
        0xe413 -> :sswitch_0
        0xe414 -> :sswitch_1
        0xe415 -> :sswitch_0
        0xe416 -> :sswitch_1
        0xe417 -> :sswitch_0
        0xe418 -> :sswitch_1
        0xe419 -> :sswitch_0
        0xe41a -> :sswitch_1
        0xe41b -> :sswitch_0
        0xe41c -> :sswitch_1
        0xe41d -> :sswitch_0
        0xe41e -> :sswitch_1
        0xe41f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x67
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x84
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8a
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x9c
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 713
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    :goto_0
    return-object p0
.end method

.method public static getHashAlgorithmForPRFAlgorithm(I)S
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 1144
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown PRFAlgorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x4

    return p0

    .line 1138
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "legacy PRF not a valid algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMinimumVersion(I)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    packed-switch p0, :pswitch_data_8

    .line 1757
    sget-object p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object p0

    .line 1754
    :pswitch_0
    sget-object p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xba
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc023
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xc072
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc09c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xcc13
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getOIDForHashAlgorithm(S)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 1165
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown HashAlgorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1163
    :pswitch_0
    sget-object p0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    .line 1161
    :pswitch_1
    sget-object p0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    .line 1159
    :pswitch_2
    sget-object p0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    .line 1157
    :pswitch_3
    sget-object p0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    .line 1155
    :pswitch_4
    sget-object p0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    .line 1153
    :pswitch_5
    sget-object p0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 765
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readSignatureAlgorithmsExtension([B)Ljava/util/Vector;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 724
    :cond_0
    array-length p0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 726
    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static hasSigningCapability(S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x40

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method static hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V
    .locals 8

    .line 930
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 931
    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 933
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    .line 934
    array-length p1, p3

    add-int/2addr p1, p0

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p0

    .line 935
    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v1

    new-array v2, v1, [B

    .line 936
    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    move-object v6, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_0

    .line 939
    array-length v7, v6

    invoke-virtual {v0, v6, v4, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 940
    invoke-virtual {v0, v2, v4}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 942
    invoke-virtual {v0, v2, v4, v1}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 943
    array-length v6, p2

    invoke-virtual {v0, p2, v4, v6}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 944
    invoke-virtual {v0, v3, v4}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    mul-int v6, p0, v5

    .line 945
    array-length v7, p3

    sub-int/2addr v7, v6

    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v4, p3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    move-object v6, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static importSession([BLorg/spongycastle/crypto/tls/SessionParameters;)Lorg/spongycastle/crypto/tls/TlsSession;
    .locals 1

    .line 733
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    return-object v0
.end method

.method public static isAEADCipherSuite(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1763
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBlockCipherSuite(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1768
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 0

    .line 182
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result p0

    return p0
.end method

.method public static isSignatureAlgorithmsExtensionAllowed(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 1

    .line 738
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isStreamCipherSuite(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1773
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTLSv11(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 1

    .line 187
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 1

    .line 192
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isValidCipherSuiteForVersion(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 0

    .line 1778
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getMinimumVersion(I)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result p0

    return p0
.end method

.method public static isValidUint16(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidUint16(J)Z
    .locals 3

    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidUint24(I)Z
    .locals 1

    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidUint24(J)Z
    .locals 3

    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidUint32(J)Z
    .locals 3

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidUint48(J)Z
    .locals 3

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidUint64(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isValidUint8(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidUint8(J)Z
    .locals 3

    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidUint8(S)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_3

    .line 850
    div-int/2addr v0, v1

    .line 851
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 854
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v3

    if-nez p0, :cond_1

    .line 855
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 861
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x2f

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    .line 863
    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 848
    :cond_3
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x32

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readASN1Object([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 647
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    const/16 v1, 0x32

    if-eqz p0, :cond_1

    .line 652
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 654
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    .line 650
    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readAllOrNothing(ILjava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 525
    sget-object p0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object p0

    .line 527
    :cond_0
    new-array v0, p0, [B

    .line 528
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    if-ne p1, p0, :cond_2

    return-object v0

    .line 535
    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readDERObject([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readASN1Object([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    .line 666
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    .line 667
    invoke-static {v1, p0}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 669
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method

.method public static readFully([BLjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    array-length v0, p0

    if-lez v0, :cond_1

    .line 559
    invoke-static {p1, p0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static readFully(ILjava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 545
    sget-object p0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object p0

    .line 547
    :cond_0
    new-array v0, p0, [B

    .line 548
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne p0, p1, :cond_1

    return-object v0

    .line 550
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readOpaque16(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    .line 576
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readOpaque24(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    .line 583
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readOpaque8(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 569
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readSignatureAlgorithmsExtension([B)Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 801
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 804
    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;

    move-result-object p0

    .line 806
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    .line 798
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readUint16(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 446
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    return p0

    .line 449
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readUint16([BI)I
    .locals 1

    .line 456
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    .line 457
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readUint16Array(ILjava/io/InputStream;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 603
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static readUint24(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 465
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 466
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0

    .line 469
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readUint24([BI)I
    .locals 2

    .line 476
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 p1, p1, 0x1

    .line 477
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 478
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static readUint32(Ljava/io/InputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 486
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 487
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 488
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0

    .line 491
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readUint32([BI)J
    .locals 2

    .line 498
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p1, p1, 0x1

    .line 499
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 500
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 501
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUint48(Ljava/io/InputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    .line 509
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUint48([BI)J
    .locals 4

    .line 515
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    .line 516
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x18

    shl-long/2addr v0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUint8(Ljava/io/InputStream;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    int-to-short p0, p0

    return p0

    .line 432
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readUint8([BI)S
    .locals 0

    .line 439
    aget-byte p0, p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static readUint8Array(ILjava/io/InputStream;)[S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    new-array v0, p0, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 592
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 618
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    .line 623
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p0

    return-object p0

    .line 621
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object p0

    return-object p0
.end method

.method public static readVersionRaw(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 636
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ltz p0, :cond_0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    return p0

    .line 639
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readVersionRaw([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method static trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1244
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1246
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 1248
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    .line 1249
    invoke-interface {p0, v1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->trackHashAlgorithm(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 955
    invoke-static {p0}, Lorg/spongycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/KeyUsage;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 958
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/KeyUsage;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 961
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p1, 0x2e

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 2

    .line 1303
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1304
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static writeGMTUnixTime([BI)V
    .locals 4

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    ushr-int/lit8 v0, v1, 0x18

    int-to-byte v0, v0

    .line 677
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    .line 678
    aput-byte v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    .line 679
    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte v0, v1

    .line 680
    aput-byte v0, p0, p1

    return-void
.end method

.method public static writeOpaque16([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 320
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 321
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeOpaque24([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    .line 328
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 329
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeOpaque8([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 312
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 313
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeUint16(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x8

    .line 220
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 221
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint16(I[BI)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 226
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    int-to-byte p0, p0

    .line 227
    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeUint16Array([ILjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 370
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 372
    aget v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint16Array([I[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 379
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 381
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    .line 390
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 391
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 392
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([I[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    .line 399
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 400
    invoke-static {v0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    add-int/lit8 p2, p2, 0x2

    .line 401
    invoke-static {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16Array([I[BI)V

    return-void
.end method

.method public static writeUint24(ILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 233
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 234
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    int-to-byte p0, p0

    .line 235
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint24(I[BI)V
    .locals 2

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 240
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 241
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    int-to-byte p0, p0

    .line 242
    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeUint32(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 248
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 249
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 250
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 251
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint32(J[BI)V
    .locals 3

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 256
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 257
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 258
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 259
    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeUint48(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 265
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 266
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 267
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 268
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 269
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 270
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint48(J[BI)V
    .locals 3

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 275
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 276
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 277
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 278
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 279
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x5

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 280
    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeUint64(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 286
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 287
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 288
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 289
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 290
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 291
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 292
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 293
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint64(J[BI)V
    .locals 3

    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 298
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 299
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 300
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 301
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 302
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 303
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    ushr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 304
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 305
    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeUint8(ILjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint8(I[BI)V
    .locals 0

    int-to-byte p0, p0

    .line 214
    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeUint8(SLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeUint8(S[BI)V
    .locals 0

    int-to-byte p0, p0

    .line 209
    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeUint8Array([SLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 335
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 337
    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint8Array([S[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 344
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 346
    aget-short v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 355
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 356
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([S[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 363
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(I[BI)V

    add-int/lit8 p2, p2, 0x1

    .line 364
    invoke-static {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8Array([S[BI)V

    return-void
.end method

.method public static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 687
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V
    .locals 1

    .line 692
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 693
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method
