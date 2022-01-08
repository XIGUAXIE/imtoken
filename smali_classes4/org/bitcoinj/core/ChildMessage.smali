.class public abstract Lorg/bitcoinj/core/ChildMessage;
.super Lorg/bitcoinj/core/Message;
.source "ChildMessage.java"


# instance fields
.field protected parent:Lorg/bitcoinj/core/Message;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bitcoinj/core/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BII)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BIILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move v6, p7

    .line 47
    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BIILorg/bitcoinj/core/MessageSerializer;I)V

    .line 48
    iput-object p5, p0, Lorg/bitcoinj/core/ChildMessage;->parent:Lorg/bitcoinj/core/Message;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V
    .locals 6
    .param p4    # Lorg/bitcoinj/core/Message;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move v5, p6

    .line 57
    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    .line 58
    iput-object p4, p0, Lorg/bitcoinj/core/ChildMessage;->parent:Lorg/bitcoinj/core/Message;

    return-void
.end method


# virtual methods
.method protected adjustLength(I)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/ChildMessage;->adjustLength(II)V

    return-void
.end method

.method protected adjustLength(II)V
    .locals 1

    .line 87
    invoke-super {p0, p1, p2}, Lorg/bitcoinj/core/Message;->adjustLength(II)V

    .line 88
    iget-object v0, p0, Lorg/bitcoinj/core/ChildMessage;->parent:Lorg/bitcoinj/core/Message;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/core/Message;->adjustLength(II)V

    :cond_0
    return-void
.end method

.method public final setParent(Lorg/bitcoinj/core/Message;)V
    .locals 1
    .param p1    # Lorg/bitcoinj/core/Message;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    iget-object v0, p0, Lorg/bitcoinj/core/ChildMessage;->parent:Lorg/bitcoinj/core/Message;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {v0}, Lorg/bitcoinj/core/Message;->unCache()V

    .line 68
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/core/ChildMessage;->parent:Lorg/bitcoinj/core/Message;

    return-void
.end method

.method protected unCache()V
    .locals 1

    .line 76
    invoke-super {p0}, Lorg/bitcoinj/core/Message;->unCache()V

    .line 77
    iget-object v0, p0, Lorg/bitcoinj/core/ChildMessage;->parent:Lorg/bitcoinj/core/Message;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lorg/bitcoinj/core/Message;->unCache()V

    :cond_0
    return-void
.end method
