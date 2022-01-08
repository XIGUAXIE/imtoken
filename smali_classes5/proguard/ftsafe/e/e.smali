.class Lproguard/ftsafe/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lproguard/ftsafe/e/c;


# direct methods
.method constructor <init>(Lproguard/ftsafe/e/c;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/e/e;->a:Lproguard/ftsafe/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lproguard/ftsafe/e/e;->a:Lproguard/ftsafe/e/c;

    iget-object v0, v0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {v0}, Lproguard/ftsafe/e/b;->h(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lproguard/ftsafe/f/a;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lproguard/ftsafe/e/e;->a:Lproguard/ftsafe/e/c;

    iget-object v1, v1, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {v1}, Lproguard/ftsafe/e/b;->h(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/e;

    move-result-object v1

    iget-object v2, p0, Lproguard/ftsafe/e/e;->a:Lproguard/ftsafe/e/c;

    iget-object v2, v2, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {v2}, Lproguard/ftsafe/e/b;->i(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/a;

    move-result-object v2

    array-length v3, v0

    invoke-interface {v1, v2, v0, v3}, Lproguard/ftsafe/c/e;->a(Lproguard/ftsafe/c/a;[BI)V

    :cond_0
    return-void
.end method
