.class public Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;
.super Ljava/lang/Object;
.source "PaymentIncrementAck.java"


# instance fields
.field private final info:Lcom/google/protobuf/ByteString;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final value:Lorg/bitcoinj/core/Coin;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p2    # Lcom/google/protobuf/ByteString;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;->value:Lorg/bitcoinj/core/Coin;

    .line 31
    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;->info:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;->info:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValue()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;->value:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method
