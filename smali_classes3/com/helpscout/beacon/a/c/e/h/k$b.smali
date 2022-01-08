.class public final Lcom/helpscout/beacon/a/c/e/h/k$b;
.super Lcom/helpscout/beacon/a/c/e/h/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/e/h/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/a/c/e/h/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/c/e/h/k$b;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/c/e/h/k$b;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/c/e/h/k$b;->a:Lcom/helpscout/beacon/a/c/e/h/k$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/c/e/h/k;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
