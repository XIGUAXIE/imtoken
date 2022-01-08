.class public final Lcom/helpscout/beacon/a/d/b/e$d;
.super Lcom/helpscout/beacon/a/d/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/d/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/a/d/b/e$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/d/b/e$d;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/d/b/e$d;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/d/b/e$d;->a:Lcom/helpscout/beacon/a/d/b/e$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/b/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
