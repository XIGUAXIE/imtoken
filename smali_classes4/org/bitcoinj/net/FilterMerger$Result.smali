.class public Lorg/bitcoinj/net/FilterMerger$Result;
.super Ljava/lang/Object;
.source "FilterMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/net/FilterMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public changed:Z

.field public earliestKeyTimeSecs:J

.field public filter:Lorg/bitcoinj/core/BloomFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
