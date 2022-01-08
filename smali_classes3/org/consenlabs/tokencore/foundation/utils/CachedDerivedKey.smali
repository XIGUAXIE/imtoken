.class public Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;
.super Ljava/lang/Object;
.source "CachedDerivedKey.java"


# instance fields
.field private derivedKey:[B

.field private hashedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;->hashedKey:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;->derivedKey:[B

    return-void
.end method

.method private hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/crypto/Hash;->sha256([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDerivedKey(Ljava/lang/String;)[B
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;->hashedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lorg/consenlabs/tokencore/foundation/utils/CachedDerivedKey;->derivedKey:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
