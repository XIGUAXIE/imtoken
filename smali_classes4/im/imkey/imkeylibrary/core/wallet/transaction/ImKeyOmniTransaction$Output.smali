.class public Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction$Output;
.super Ljava/lang/Object;
.source "ImKeyOmniTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction;
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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction$Output;->value:J

    .line 75
    iput-object p3, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction$Output;->address:Lorg/bitcoinj/core/Address;

    .line 76
    iput-object p4, p0, Lim/imkey/imkeylibrary/core/wallet/transaction/ImKeyOmniTransaction$Output;->scriptData:[B

    return-void
.end method
