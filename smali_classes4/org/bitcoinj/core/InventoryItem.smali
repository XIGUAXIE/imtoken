.class public Lorg/bitcoinj/core/InventoryItem;
.super Ljava/lang/Object;
.source "InventoryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/InventoryItem$Type;
    }
.end annotation


# static fields
.field static final MESSAGE_LENGTH:I = 0x24


# instance fields
.field public final hash:Lorg/bitcoinj/core/Sha256Hash;

.field public final type:Lorg/bitcoinj/core/InventoryItem$Type;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/InventoryItem$Type;Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bitcoinj/core/InventoryItem;->type:Lorg/bitcoinj/core/InventoryItem$Type;

    .line 40
    iput-object p2, p0, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

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

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/InventoryItem;

    .line 53
    iget-object v2, p0, Lorg/bitcoinj/core/InventoryItem;->type:Lorg/bitcoinj/core/InventoryItem$Type;

    iget-object v3, p1, Lorg/bitcoinj/core/InventoryItem;->type:Lorg/bitcoinj/core/InventoryItem$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    iget-object p1, p1, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lorg/bitcoinj/core/InventoryItem;->type:Lorg/bitcoinj/core/InventoryItem$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bitcoinj/core/InventoryItem;->type:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
