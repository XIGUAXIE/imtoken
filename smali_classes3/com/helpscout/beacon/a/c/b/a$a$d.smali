.class public final Lcom/helpscout/beacon/a/c/b/a$a$d;
.super Lcom/helpscout/beacon/a/c/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/b/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/a/c/b/a$a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/c/b/a$a$d;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/c/b/a$a$d;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/c/b/a$a$d;->a:Lcom/helpscout/beacon/a/c/b/a$a$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/c/b/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
