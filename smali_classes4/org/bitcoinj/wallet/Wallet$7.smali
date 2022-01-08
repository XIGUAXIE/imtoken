.class Lorg/bitcoinj/wallet/Wallet$7;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/Wallet;->queueOnReorganize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/wallet/Wallet;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/utils/ListenerRegistration;)V
    .locals 0

    .line 2778
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet$7;->this$0:Lorg/bitcoinj/wallet/Wallet;

    iput-object p2, p0, Lorg/bitcoinj/wallet/Wallet$7;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2781
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet$7;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet$7;->this$0:Lorg/bitcoinj/wallet/Wallet;

    invoke-interface {v0, v1}, Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;->onReorganize(Lorg/bitcoinj/wallet/Wallet;)V

    return-void
.end method
