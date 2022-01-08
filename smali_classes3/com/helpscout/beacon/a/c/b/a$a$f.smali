.class public final Lcom/helpscout/beacon/a/c/b/a$a$f;
.super Lcom/helpscout/beacon/a/c/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/b/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/a/c/b/a$a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/c/b/a$a$f;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/c/b/a$a$f;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/c/b/a$a$f;->a:Lcom/helpscout/beacon/a/c/b/a$a$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/c/b/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
