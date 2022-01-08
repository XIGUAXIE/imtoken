.class public final Lcom/helpscout/beacon/a/c/e/h/a;
.super Ljava/lang/Throwable;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/d/e/a/d;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/e/a/d;)V
    .locals 1

    const-string v0, "attachment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/h/a;->a:Lcom/helpscout/beacon/a/d/e/a/d;

    return-void
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/a/d/e/a/d;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/a;->a:Lcom/helpscout/beacon/a/d/e/a/d;

    return-object v0
.end method
