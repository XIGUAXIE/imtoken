.class public final Lproguard/ftsafe/d/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/bluetooth/BluetoothDevice;

.field private b:I

.field private c:Lproguard/ftsafe/b/b;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproguard/ftsafe/d/j;->a:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public a()Lproguard/ftsafe/d/h;
    .locals 5

    new-instance v0, Lproguard/ftsafe/d/h;

    iget-object v1, p0, Lproguard/ftsafe/d/j;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lproguard/ftsafe/d/j;->c:Lproguard/ftsafe/b/b;

    iget v3, p0, Lproguard/ftsafe/d/j;->b:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lproguard/ftsafe/d/h;-><init>(Landroid/bluetooth/BluetoothDevice;Lproguard/ftsafe/b/b;ILproguard/ftsafe/d/i;)V

    return-object v0
.end method

.method public a(I)Lproguard/ftsafe/d/j;
    .locals 0

    iput p1, p0, Lproguard/ftsafe/d/j;->b:I

    return-object p0
.end method

.method public a(Lproguard/ftsafe/b/b;)Lproguard/ftsafe/d/j;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/d/j;->c:Lproguard/ftsafe/b/b;

    return-object p0
.end method
