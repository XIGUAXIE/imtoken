.class public final Lcom/helpscout/beacon/a/a/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/helpscout/beacon/a/a/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/a/c/g;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/a/c/g;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/a/c/g;->a:Lcom/helpscout/beacon/a/a/c/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/helpscout/common/validator/UrlValidator;
    .locals 2

    new-instance v0, Lcom/helpscout/common/validator/UrlValidator;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpscout/common/validator/UrlValidator;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method
