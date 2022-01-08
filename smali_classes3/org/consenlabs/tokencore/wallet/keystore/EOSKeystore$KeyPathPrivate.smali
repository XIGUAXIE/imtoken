.class public Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;
.super Ljava/lang/Object;
.source "EOSKeystore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyPathPrivate"
.end annotation


# static fields
.field public static final HD_SHA256:Ljava/lang/String; = "HD_SHA256"

.field public static final IMPORTED:Ljava/lang/String; = "IMPORTED"

.field public static final PATH_DIRECTLY:Ljava/lang/String; = "PATH_DIRECTLY"


# instance fields
.field private derivedMode:Ljava/lang/String;

.field private encPrivate:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

.field private path:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->encPrivate:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    .line 272
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->publicKey:Ljava/lang/String;

    .line 273
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->path:Ljava/lang/String;

    .line 274
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->derivedMode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .locals 0

    .line 257
    iget-object p0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->encPrivate:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-object p0
.end method

.method static synthetic access$002(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .locals 0

    .line 257
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->encPrivate:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-object p1
.end method

.method static synthetic access$100(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;)Ljava/lang/String;
    .locals 0

    .line 257
    iget-object p0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->publicKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 257
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->publicKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 257
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->derivedMode:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getDerivedMode()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->derivedMode:Ljava/lang/String;

    return-object v0
.end method

.method public getEncPrivate()Lorg/consenlabs/tokencore/foundation/crypto/EncPair;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->encPrivate:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public setDerivedMode(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->derivedMode:Ljava/lang/String;

    return-void
.end method

.method public setEncPrivate(Lorg/consenlabs/tokencore/foundation/crypto/EncPair;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->encPrivate:Lorg/consenlabs/tokencore/foundation/crypto/EncPair;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->path:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPathPrivate;->publicKey:Ljava/lang/String;

    return-void
.end method
