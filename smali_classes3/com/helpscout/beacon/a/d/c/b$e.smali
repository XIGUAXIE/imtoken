.class public final Lcom/helpscout/beacon/a/d/c/b$e;
.super Lcom/helpscout/beacon/a/d/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/d/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/a/d/c/b$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/d/c/b$e;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/d/c/b$e;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/d/c/b$e;->a:Lcom/helpscout/beacon/a/d/c/b$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/d/c/b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
