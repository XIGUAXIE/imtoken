.class public final Lcom/helpscout/beacon/internal/domain/model/Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/domain/model/Page$Utils;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/Page;",
        "",
        "",
        "FIRST",
        "I",
        "SECOND",
        "<init>",
        "()V",
        "Utils",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final FIRST:I = 0x1

.field public static final INSTANCE:Lcom/helpscout/beacon/internal/domain/model/Page;

.field public static final SECOND:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/Page;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/domain/model/Page;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/Page;->INSTANCE:Lcom/helpscout/beacon/internal/domain/model/Page;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
