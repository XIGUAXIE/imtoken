.class public Lorg/bitcoinj/core/NotFoundMessage;
.super Lorg/bitcoinj/core/InventoryMessage;
.source "NotFoundMessage.java"


# static fields
.field public static MIN_PROTOCOL_VERSION:I = 0x11171


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/InventoryMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/InventoryItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/InventoryMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/bitcoinj/core/NotFoundMessage;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/InventoryMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-void
.end method
