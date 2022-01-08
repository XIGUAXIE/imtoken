.class Lorg/bitcoinj/core/Peer$GetDataRequest;
.super Ljava/lang/Object;
.source "Peer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetDataRequest"
.end annotation


# instance fields
.field final future:Lcom/google/common/util/concurrent/SettableFuture;

.field final hash:Lorg/bitcoinj/core/Sha256Hash;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Sha256Hash;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$GetDataRequest;->hash:Lorg/bitcoinj/core/Sha256Hash;

    .line 141
    iput-object p2, p0, Lorg/bitcoinj/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method
