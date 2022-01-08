.class public final Lcom/helpscout/beacon/a/c/e/g/b$a$a;
.super Lcom/helpscout/beacon/a/c/e/g/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/e/g/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/a/c/e/g/b$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/b$a$a;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/c/e/g/b$a$a;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/c/e/g/b$a$a;->a:Lcom/helpscout/beacon/a/c/e/g/b$a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/c/e/g/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
