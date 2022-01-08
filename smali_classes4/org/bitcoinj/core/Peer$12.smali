.class synthetic Lorg/bitcoinj/core/Peer$12;
.super Ljava/lang/Object;
.source "Peer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bitcoinj$core$InventoryItem$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1183
    invoke-static {}, Lorg/bitcoinj/core/InventoryItem$Type;->values()[Lorg/bitcoinj/core/InventoryItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bitcoinj/core/Peer$12;->$SwitchMap$org$bitcoinj$core$InventoryItem$Type:[I

    :try_start_0
    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Transaction:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-virtual {v1}, Lorg/bitcoinj/core/InventoryItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/bitcoinj/core/Peer$12;->$SwitchMap$org$bitcoinj$core$InventoryItem$Type:[I

    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Block:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-virtual {v1}, Lorg/bitcoinj/core/InventoryItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
