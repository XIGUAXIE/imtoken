.class public Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;
.super Ljava/lang/Object;
.source "BitcoinTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Output"
.end annotation


# instance fields
.field address:Lorg/bitcoinj/core/Address;

.field scriptData:[B

.field value:J


# direct methods
.method public constructor <init>(JLorg/bitcoinj/core/Address;[B)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-wide p1, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;->value:J

    .line 284
    iput-object p3, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;->address:Lorg/bitcoinj/core/Address;

    .line 285
    iput-object p4, p0, Lorg/consenlabs/tokencore/wallet/transaction/BitcoinTransaction$Output;->scriptData:[B

    return-void
.end method
