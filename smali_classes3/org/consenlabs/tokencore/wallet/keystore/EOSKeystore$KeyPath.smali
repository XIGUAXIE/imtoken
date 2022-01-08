.class public Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;
.super Ljava/lang/Object;
.source "EOSKeystore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyPath"
.end annotation


# instance fields
.field path:Ljava/lang/String;

.field privateKey:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->privateKey:[B

    .line 316
    iput-object p2, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->privateKey:[B

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->path:Ljava/lang/String;

    return-void
.end method

.method public setPrivateKey([B)V
    .locals 0

    .line 324
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$KeyPath;->privateKey:[B

    return-void
.end method
