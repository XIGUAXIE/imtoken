.class public Lcom/subgraph/orchid/circuits/hs/HSAuthentication;
.super Ljava/lang/Object;
.source "HSAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;
    }
.end annotation


# static fields
.field private static final BASIC_ID_LENGTH:I = 0x4


# instance fields
.field private final cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    return-void
.end method

.method private createEntry(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 45
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 47
    new-instance p1, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;

    invoke-direct {p1, v0, v1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;-><init>([B[B)V

    return-object p1
.end method

.method private decryptAuthEntry(Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytes([B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object v0

    .line 101
    iget-object v1, p1, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;->skey:[B

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([B)V

    .line 102
    iget-object p1, p1, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;->skey:[B

    return-object p1
.end method

.method private decryptIntroductionPointsWithBasicAuth(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getType()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_BASIC:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    if-ne v0, v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->readBasicEntries(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->readAuthIV(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 57
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->generateAuthId([B)[B

    move-result-object v2

    .line 58
    invoke-direct {p0, v0, v2}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->findKeyInAuthEntries(Ljava/util/List;[B)[B

    move-result-object v0

    .line 60
    invoke-direct {p0, p1, v0, v1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptRemaining(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "Introduction points encrypted with \'basic\' authentication and no cookie available to decrypt"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decryptIntroductionPointsWithStealthAuth(Ljava/nio/ByteBuffer;)[B
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getType()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;->COOKIE_STEALTH:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie$CookieType;

    if-ne v0, v1, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->readAuthIV(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptRemaining(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object p1

    return-object p1

    .line 115
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorParsingException;

    const-string v0, "Introduction points encrypted with \'stealth\' authentication and no cookie available to descrypt"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decryptRemaining(Ljava/nio/ByteBuffer;[B[B)[B
    .locals 0

    .line 106
    invoke-static {p2, p3}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->createFromKeyBytesWithIV([B[B)Lcom/subgraph/orchid/crypto/TorStreamCipher;

    move-result-object p2

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    new-array p3, p3, [B

    .line 108
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {p2, p3}, Lcom/subgraph/orchid/crypto/TorStreamCipher;->encrypt([B)V

    return-object p3
.end method

.method private findKeyInAuthEntries(Ljava/util/List;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;",
            ">;[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;

    .line 92
    iget-object v1, v0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;->id:[B

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptAuthEntry(Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;)[B

    move-result-object p1

    return-object p1

    .line 96
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;

    const-string p2, "Could not find matching cookie id for basic authentication"

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateAuthId([B)[B
    .locals 3

    .line 81
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->cookie:Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 83
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update([B)V

    .line 84
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object p1

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 86
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private readAuthIV(Ljava/nio/ByteBuffer;)[B
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 76
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private readBasicEntries(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x10

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->createEntry(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/circuits/hs/HSAuthentication$BasicAuthEntry;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public decryptIntroductionPoints([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;
        }
    .end annotation

    .line 22
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptIntroductionPointsWithBasicAuth(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 27
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSAuthentication;->decryptIntroductionPointsWithStealthAuth(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    return-object p1

    .line 29
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Introduction points section begins with unrecognized byte ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HSAuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
