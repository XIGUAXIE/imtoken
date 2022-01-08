.class public final Lcom/helpscout/beacon/a/d/b/e$a;
.super Lcom/helpscout/beacon/a/d/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/d/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/a/d/b/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/d/b/e$a;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/d/b/e$a;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/d/b/e$a;->a:Lcom/helpscout/beacon/a/d/b/e$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/b/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
