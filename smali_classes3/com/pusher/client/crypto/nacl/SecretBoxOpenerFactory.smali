.class public Lcom/pusher/client/crypto/nacl/SecretBoxOpenerFactory;
.super Ljava/lang/Object;
.source "SecretBoxOpenerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create([B)Lcom/pusher/client/crypto/nacl/SecretBoxOpener;
    .locals 1

    .line 6
    new-instance v0, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;

    invoke-direct {v0, p1}, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;-><init>([B)V

    return-object v0
.end method
