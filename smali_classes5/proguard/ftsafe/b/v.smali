.class Lproguard/ftsafe/b/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lproguard/ftsafe/b/s;


# direct methods
.method constructor <init>(Lproguard/ftsafe/b/s;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/b/v;->a:Lproguard/ftsafe/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/b/v;->a:Lproguard/ftsafe/b/s;

    iget-object v0, v0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {v0}, Lproguard/ftsafe/b/r;->b(Lproguard/ftsafe/b/r;)Lproguard/ftsafe/b/w;

    move-result-object v0

    invoke-interface {v0}, Lproguard/ftsafe/b/w;->a()V

    return-void
.end method
