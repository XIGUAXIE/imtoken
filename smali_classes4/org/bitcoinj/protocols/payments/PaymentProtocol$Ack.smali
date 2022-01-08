.class public Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;
.super Ljava/lang/Object;
.source "PaymentProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/payments/PaymentProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ack"
.end annotation


# instance fields
.field private final memo:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;->memo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMemo()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 365
    iget-object v0, p0, Lorg/bitcoinj/protocols/payments/PaymentProtocol$Ack;->memo:Ljava/lang/String;

    return-object v0
.end method
