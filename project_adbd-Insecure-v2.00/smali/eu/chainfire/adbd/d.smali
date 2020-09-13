.class final Leu/chainfire/adbd/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/adbd/MainActivity;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Leu/chainfire/adbd/MainActivity;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/adbd/d;->a:Leu/chainfire/adbd/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/adbd/d;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/d;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/adbd/d;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
