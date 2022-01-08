.class public Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;
.super Ljava/lang/Object;
.source "EOSKeystore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionObject"
.end annotation


# instance fields
.field parent:Ljava/lang/String;

.field permission:Ljava/lang/String;

.field publicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 369
    :cond_1
    check-cast p1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;

    .line 370
    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->permission:Ljava/lang/String;

    iget-object v3, p1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->permission:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->publicKey:Ljava/lang/String;

    iget-object v3, p1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->publicKey:Ljava/lang/String;

    .line 371
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->parent:Ljava/lang/String;

    iget-object p1, p1, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->parent:Ljava/lang/String;

    .line 372
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->parent:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->publicKey:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->parent:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setParent(Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->parent:Ljava/lang/String;

    return-void
.end method

.method public setPermission(Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->permission:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lorg/consenlabs/tokencore/wallet/keystore/EOSKeystore$PermissionObject;->publicKey:Ljava/lang/String;

    return-void
.end method
