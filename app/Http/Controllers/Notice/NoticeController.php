<?php
/**
 * Created by PhpStorm.
 * User: wangxinyu
 * Date: 18/1/12
 * Time: 13:34
 */
use App\Http\Controllers\Controller;
use Fenos\Notifynder\Models\Notification;
use Fenos\Notifynder\Facades\Notifynder;


class NoticeController extends Controller{
//
//    public function send(){
//        $user_sender_id   = 1; // User sender
//        $user_receiver_id = 2; // User that receive the notification
//        $period_day = (is_morning()) ? 'morning' : 'evening';
//        $notifynder->category('sayhello')
//            ->from(1)
//            ->to(2)
//            ->url('http://localhost')
//            ->extra(compact('period_day'))
//            ->send();
//    }
    public function myNews(Request $request){
        //dd($this->user);
        $message = $this->user->getNotifications(15,1,'desc');
        return view('home.my_news',compact('message'));
    }

    public function newsDetail(Request $request){
        $id = $request->get('id',0);
        $query = Notification::where('id',$id);
        if($id){
            $query->update(['read'=>2]);
            return response()->json(['success'=>1]);
        }
        $news_detail = $query->findOrFail($id);
        return view('home.news_detail',compact('news_detail'));

    }


}
