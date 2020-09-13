.class final Leu/chainfire/adbd/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Leu/chainfire/adbd/MainActivity;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Leu/chainfire/adbd/MainActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/adbd/h;->a:Leu/chainfire/adbd/MainActivity;

    iput-object p2, p0, Leu/chainfire/adbd/h;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/h;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/adbd/h;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
