.class public final Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomView;",
        "",
        "",
        "CHAT_HEADER",
        "Ljava/lang/String;",
        "CHAT_RATING",
        "<init>",
        "()V",
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
.field public static final CHAT_HEADER:Ljava/lang/String; = "CV_CHAT_HEADER"

.field public static final CHAT_RATING:Ljava/lang/String; = "CV_CHAT_RATING"

.field public static final INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomView;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomView;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomView;->INSTANCE:Lcom/helpscout/beacon/internal/presentation/inject/modules/CustomView;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
