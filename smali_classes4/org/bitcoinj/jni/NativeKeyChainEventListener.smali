.class public Lorg/bitcoinj/jni/NativeKeyChainEventListener;
.super Ljava/lang/Object;
.source "NativeKeyChainEventListener.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;


# instance fields
.field public ptr:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onKeysAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)V"
        }
    .end annotation
.end method
